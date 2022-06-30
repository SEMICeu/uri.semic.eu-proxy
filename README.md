# uri.semic.eu-proxy
The proxy setup for uri.semic.eu. 
This repository contains the software code for the proxy setup, while the repository [uri.semic.eu-puris](https://github.com/SEMICeu/uri.semic.eu-puris) is the data repository being served by the proxy.

Most of the documentation is developer oriented; editors are though invited to read the section on [updating the content](#common-activities).

This repository creates a proxy setup for uri.semic.eu.
It has support for 
   - https termination
   - multi domain handling
   - machine readible content negotation 

The system may handle also optionally
   - language negotation 

## Setup

It consists of 2 proxies which are chained after each-other.
The Internet facing proxy is a Caddy instance. This has been chosen for its out-of the box tls (https) support.
The Caddy proxy forwards all traffic to a Nginx. 
The purpose of the Caddy proxy is to perform on tls support for each handled subdomain.
The Nginx proxy implements all business logic.
The Caddy proxy does not contain any domain specific logic or rules. 

More reading:
- https://caddyserver.com/
- http://nginx.org/



### business logic design PURI service

The PURI service is implemented directly in the NginX. 

Any forwarded data.europa.eu/{REF} domain that is used to mint PURIs has to be handled on the domain uri.semic.eu under the path {REF}.
In the programming language lua (the default and well integrated programming language for Nginx) a dedicated extension has been written to support machine readible content negotation. All source code is in this repository.
It will convert any request on the path {REF} based on the Accept header and the eventual filename extension present to a target URL.
This target URL can either correspond to a path in the repository https://github.com/SEMICeu/uri.semic.eu-puris or a URL targeting the html representation.
Because the html representation of the URI is not yet harmonised in one place, there is a mapping table that will forward the requests to the target url.

### implemented rules PURI service
The implemented rules for mapping a PURI to the URL are
  
  - If the URL is of the form http(s)://uri.semic.eu/{REF}/{entitypath}.{extension} 
     - if the extension is a [supported extension](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/urisemic.lua#L42), return the data in the form of the extension 
  - If the URL is requested with HTTP header _Accept_
     - if the value of the header is one of the supported headers, return the data in the form of the accept header.
  - Otherwise return the html version according to the mapping table [htmlmap.lua](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/htmlmap.lua).
  
The mapping table is a mapping of the URL, identified with {REF}/{entitypath},  to the HTML document where the information of the URL is found.
Best practice is to be as precise as possible: thus refer to a section within the HTML document instead to the whole document.

### business logic design non PURI service

Since the tls-terminator (Caddy) is the sole access point to the SEMIC VM, also all trafic for other services is passing through it.
In this design the NginX is the proxy that will implement the public facing business logic for these services (by applying forward or reverse proxing).

To minimally disturbe the existing configuration deployed on the SEMIC VM, the Nginx implements the necessary proxy rules to the public facing services. 
Some of these public facing services are reachable on different ports than 80 or 443. 
To increase security this should be replaced with a proper access on the right subdomain on port 80 or 443.w



## Deployment
The configuration and setup is dockerized and thus can easily deployed on any virtual machine having access to the internet. 
Deployment is done with the following steps:

   - clone the repository on the target machine
   - create the directoy /etc/caddy/data and make is writable for the docker 
   - build the dockers
   - start the setup using docker-compose

The build and startup instructions are available in the [Makefile](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/Makefile) in this repository.

One can monitor also the services by pulling the logs from the docker-compose. An example of the statement is found in the Makefile.

More reading:
- https://docs.docker.com/
- https://docs.docker.com/compose/
- https://git-scm.com/doc


### Prerequisite knowledge
It is assumed that contributors are familiar with the HTTP protocol, proxies and Docker. Specific knowledge of the used proxies in this repository is not mandatory, but helpful. This knowledge can be (should be) acquired by reading the manuals. As the proxies are a living ecosystem, over time improvements or adapatations should be made to the configuration to have the most recent version of the proxies running.

Knowledge about _containerization_ more specifically the Docker ecosystem is needed. The design is build on top of Docker to make the solution easy transferable to other systems. The commandline statements included in this repository are only explained to the level of their purpose in the realization of the desired functionality. Retrieving detailed semantics of the command and their parameters is up to the reader to look up in the manual on Docker.

Another principle is _Infrastructure as Code_. This forms the underlying principle for the design. Basically it means that the service is rebuildable and deployable based on the content of the repository requiring only minimal actions on the underlying system. In the past a long detailed manuals were provided describing step-by-step the commands to be typed in a terminal. These manuals documented the dependency checks, the configurations to make, ... in order to prepare the system for the service. With Infrastructure as Code this manual is replaced with scripts that are executed on the machine. 
The term orginates from cloud environments which use APIs to deploy infrastructure components such as processors, diskspaces, networks, etc. By designed a language around these API's the infrastructure is described as code. In here, it means all services are containerized (Docker) and interconnected using Docker-compose. With that knowledge the complete service is described and a step-by-step manual does not need to be maintained. 

One base aspect from Docker is the layering of images on top of eachother. This means that one extends one image with additional configuration to create a new image. This process is repeated over and over, crossing projects and organisations, to reach the desired image. The design of the layering is part of the architecture. It determines the key flexibility points. A centralistic approach where everything is configured in one file, means usually that one connects to the source code of all key components. That can be useful if one is developing the source code itself. However if one would would like to take new functionalities or security patches into account then these layering approach is incredible helpful to propagate changes in a controlled way. It is recommended to start from "official" images, these are images managed by the service/software provider/community.



More reading:
- https://caddyserver.com/
- http://nginx.org/
- https://docs.docker.com/
- https://docs.docker.com/compose/
- https://git-scm.com/doc
- https://en.wikipedia.org/wiki/Infrastructure_as_code



### System requirements

- Docker and Docker-compose installed.
- Access to the internet

### development
Doing local development is possible, but one should replace the [uri.semic.eu](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/semic.Caddyfile#L22) domain in Caddy with `localhost` domain. This is to avoid that Caddy will try to register a certificate of the existing domains.
The Makefile includes several localhost tests which allow to see the behaviour of the setup.

Both the Caddy and the Nginx are variants of their official Docker images. This is because they require some modules to be activated.
Caddy allows to extend it with caddy modules through Docker build instructions and having so a close connection with the official repositories.
Nginx has no standard way to extend is with modules through Docker. The instructions to include common modules into the docker images require to rebuild Nginx from source with the modules included.
For that the Offical Nginx Docker build script has been copied into this repository. To build the uri.semic.eu Nginx first this images has to be build and then the configured Nginx will be build.

The command `make my-nginx` contains the statements to build an Docker image for Nginx with the additional modules included. This results in a new base Nginx image with an empty configuration. This image is used to build the uri-semic-eu-proxy image containing the proxy rules for uri-semic-eu. 

Updating the proxies to more recent versions to remove security treats is done by rebuilding the container images and bumping where required the version numbers in the Dockerfile configurations. 


| SystemComponent | file | purpose |
| --- | --- | --- |
| Global | dockercompose.yml | the complete system |
| Global | Makefile | commands to build, test, run the system and components| 
| Caddy | Dockerfile.caddy | The container configuration for Caddy |
| Caddy | semic.Caddyfile | the proxy configuration for Caddy |
| Nginx | Dockerfile.nginx | the container configuration for Nginx |
| Nginx | urisemic.lua | supporting lua code for the content negotation |
| Nginx | urisemic.mime.types | the mime types support table |
| Nginx | urisemic.nginx.conf | the global Nginx configuration |
| Nginx | urisemic.nginx.conf.d | the specific Nginx configuration handling the different domains |
| Nginx | my-nginx | the directory containing the official Docker image configuration with lua enabled |
| Nginx | htmlmap.lua |  the mapping of puris on their html version |
| Nginx | robots.txt | the robots.txt file served by Nginx |


Developers MUST follow the _infrastructure as code_ principle while making changes. 
This means any configuration change must be committed to the appropriate source code file. 
In particular any change to the globale system setup should be expressed as part of the dockercompose.yml file.



## common activities

### redeploy a new configuration on the uri.semic.eu VM:
1. login on the uri.semic.eu VM 
2. goto to the location where this repository is checked out (currently it is /home/admin/proxy) 
3. pull the new content from github or adapt if required locally the configuration. Local adapations should be committed and pushed to github.
4. Build a new nginx container: `make nginx` (*)
5. Restart the docker-compose setup to use the newly build nginx container: `make run` (*)

(*) ensure you have sufficient rights. It might be required to execute the statements as superuser (`sudo`).

### adding a new PURI
1. For each new PURI in an existing domain the following steps must be done to make the PURI resolveable:
  - add in the repository [uri.semic.eu-puris](https://github.com/SEMICeu/uri.semic.eu-puris) the data in each RDF serialization at the right path in the directory _releases_
  - add in the [htmlmapping configuration file](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/htmlmap.lua) the mapping of the path to the target html URL.
 
2. Redeploy the new configuration on the uri.semic.eu VM

### adding a new PURI domain {REF} 
1. Copy the nginx configuration for the domain [m8g](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/urisemic.nginx.conf.d#L145) to {REF} in the [config file](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/urisemic.nginx.conf.d) and adapt all occurences of m8g in the copied block to {REF}.
2. Add the data for each PURI in domain {REF} as described above
3. Redeploy the new configuration on the uri.semic.eu VM



## TODO

1. activate autorestart when VM restarts:
    Any VM restart would require to restart the docker services. To reduce the current require manual intervention, this should be automated.
2. improvements on the URL processing:
     - support for Accept header qs and level specifications (low usage though) See [RFC2616](https://datatracker.ietf.org/doc/html/rfc2616).
3. infrastructure as code (improved service management)
     (**rescue docker image storage**)
     - (risk 1 - used Docker images cannot be build) Although the Docker containers are build from official Docker images, low maintenance activity might reside in a situation in which the deployed version is not anymore supported and available. And that the Docker image cannot be rebuilt.
     - (risk 2 - downtown to loosing the cached Docker images) To avoid long downtime in the case where the uri.semic.eu VM looses the docker images (which are stored on the VM disk) and the docker containers cannot be immediately rebuilt from this repository the docker images should be pushed to an external docker container repository.
       In that case downtime can be reduced by pulling the latest built image from that repository.
       The risk mitigation to introduce a SEMIC maintained Docker repository is a further step towards implementing the uri.semic.eu VM by the _infrastructure as code_ principle.         

4. activate robots.txt in all subdomains  


