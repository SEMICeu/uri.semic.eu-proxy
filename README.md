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


## Deployment
The configuration and setup is dockerized and thus can easily deployed on any virtual machine having access to the internet. 
Deployment is done with the following steps:

   - clone the repository on the target machine
   - create the directoy /etc/caddy/data and make is writable for the docker 
   - build the dockers
   - start the setup using docker-compose

The build and startup instructions are available in the Makefile in this repository.

One can monitor also the services by pulling the logs from the docker-compose. And example of the statement is found in the Makefile.

## System requirements
Docker and Docker-compose installed.
Access to the internet

## development
Doing local development is possible, but one should replace the multidomains in Caddy  with a single localhost domain. This is to avoid that Caddy will try to register a certificate of the existing domains.
The Makefile includes several localhost tests which allow to see the behaviour of the setup.

Both the Caddy and the Nginx are variants of their official Docker images. This is because they require some modules to be activated.
Caddy allows to extend it with caddy modules through Docker build instructions and having so a close connection with the official repositories.
Nginx has no standard way to extend is with modules through Docker. The instructions to include common modules into the docker images require to rebuild Nginx from source with the modules included.
For that the Offical Nginx Docker build script has been copied into this repository. To build the uri.semic.eu Nginx first this images has to be build and then the configured Nginx will be build.

