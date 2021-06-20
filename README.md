# uri.semic.eu-proxy
The proxy setup for uri.semic.eu


This repository creates a proxy setup for uri.semic.eu.
It has support for 
   - https termination
   - multi domain handling
   - machine readible content negotation 

The system may handle also optionally
   - language negotation 

## Setup

It consists of 2 proxy which are chained after each-other.
The Internet facing proxy is a Caddy instance. This has been chosen for its out-of the box tls (https) support.
The Caddy proxy forwards all traffic to a Nginx. This proxy implements all business logic.


### business logic design

All subdomain traffic is forwarded to the handling service on a port different from 80 or 443.
Deploying any other public facing service must be made public on such port. 

Any forwarded data.europa.eu/{REF} domain that is used to mint PURIs has to be handled on the domain uri.semic.eu under the path {REF}.
In the programming language lua (the default and well integrated programming language for Nginx) a dedicated extension has been written to support machine readible content negotation.
It will convert any request on the path {REF} based on the Accept header and the eventual filename extension present to a target URL.
This target URL can either correspond to a path in the repository https://github.com/SEMICeu/uri.semic.eu-puris or a URL targeting the html representation.
Because the html representation of the URI is not yet harmonised in one place, there is a mapping table that will forward the requests to the target url.

### implemented rules
The implemented rules for mapping a PURI to the URL are
  
  - If the URL is of the form http(s)://uri.semic.eu/{REF}/{entitypath}.{extension} 
     - if the extension is a supported extension, return the data in the form of the extension 
  - If the URL is requested with HTTP header _Accept_
     - if the value of the header is one of the supported headers, return the data in the form of the accept header
  Otherwise return the html version according to the mapping table [htmlmap.lua](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/htmlmap.lua).

## Deployment
The configuration and setup is dockerized and thus can easily deployed on any virtual machine having access to the internet. 
Deployment is done with the following steps:

   - clone the repository on the target machine
   - create the directoy /etc/caddy/data and make is writable for the docker 
   - build the dockers
   - start the setup using docker-compose

The build and startup instructions are available in the [Makefile](https://github.com/SEMICeu/uri.semic.eu-proxy/blob/main/Makefile) in this repository.

One can monitor also the services by pulling the logs from the docker-compose. And example of the statement is found in the Makefile.

## System requirements

- Docker and Docker-compose installed.
- Access to the internet

## development
Doing local development is possible, but one should replace the multidomains in Caddy  with a single localhost domain. This is to avoid that Caddy will try to register a certificate of the existing domains.
The Makefile includes several localhost tests which allow to see the behaviour of the setup.

Both the Caddy and the Nginx are variants of their official Docker images. This is because they require some modules to be activated.
Caddy allows to extend it with caddy modules through Docker build instructions and having so a close connection with the official repositories.
Nginx has no standard way to extend is with modules through Docker. The instructions to include common modules into the docker images require to rebuild Nginx from source with the modules included.
For that the Offical Nginx Docker build script has been copied into this repository. To build the uri.semic.eu Nginx first this images has to be build and then the configured Nginx will be build.

Updating the proxies to more recent versions to remove security treats is done by rebuilding the container images and bumping where required the version numbers in the Dockerfile configurations. 

## common activities

### redeploy a new configuration on the uri.semic.eu VM:
1. login on the uri.semic.eu VM 
2. goto to the location where this repository is checked out (/home/admin/proxy) 
3. pull the new content from github or adapt locally the configuration. Local adapations should be committed and pushed to github.
4. Build a new nginx container: `make nginx`
5. Restart the docker-compose setup to use the newly build nginx container: `make run`

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

1. activate autorestart when VM restarts
2. improvements on the URL processing:
     - support for Accept header qs and level specifications (low usage though)
3. infrastrure as code (improved service management)
     (**rescue docker image storage**)
     Although the Docker containers are build from official Docker images, low maintenance activity might reside in a situation in which the deployed version is not anymore supported and available. And that the Docker image cannot be rebuilt. To avoid long downtime in the case where the uri.semic.eu VM looses the docker images (which are stored in the VM disk) and the docker containers cannot be immediately rebuilt from this repository the docker images should be pushed to an external docker container repository. In that case downtime can be reduced by pulling the latest built image from that repository. This activity is a step towards implementing the uri.semic.eu VM by the _infracture as code_ principle.         
  


