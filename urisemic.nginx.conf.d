# An implementation of # https://www.w3.org/TR/swbp-vocab-pub/

server {
    listen       80;
    server_name  geodcat-ap.semic.eu;

    location / {

	     rewrite ^/(.*)$ http://geodcat-ap.semic.eu:8890/$1 redirect;

    }
}

server {
    listen       80;
    server_name  mdr.semic.eu;

    location / {

	     rewrite ^/(.*)$ http://mdr.semic.eu:81/$1 redirect;

    }
}

server {
    listen       80;
    server_name  mapping.semic.eu;

    location / {

	     rewrite ^/(.*)$ http://mapping.semic.eu:81/$1 redirect;

    }
}

server {
    listen       80;
    server_name  health.semic.eu;

    location / {

	     rewrite ^/(.*)$ http://health.semic.eu:81/$1 redirect;

    }
}

server {
    listen       80;
    server_name  e-documents.semic.eu;

    #  TODO: e-documents contains some more complex URI rewrite rules

    location / {

	     rewrite ^/(.*)$ http://e-documents.semic.eu:8890/$1 redirect;

    }
}

server {
    listen       80;
    server_name  dcat-ap.semic.eu;

    location / {

	     rewrite ^/(.*)$ http://dcat-ap.semic.eu:3031/$1 redirect;

    }
}

# adms-ap is not served because today there is no response defined.
#server {
#    listen       80;
#    server_name  adms-ap.semic.eu;
#
#    location / {
#
#	     rewrite ^/(.*)$ http://adms-ap.semic.eu:81/$1 redirect;
#
#    }
#}


server {
    listen       80;
    server_name  cpsv-ap.semic.eu;

   location / {

	     rewrite ^/(.*)$ http://cpsv-ap.semic.eu:81/$1 redirect;

    }
}




server {
    listen       80;
    server_name  uri.semic.eu;


    set $req_header "";
    set $resp_header "";



#    location /r5r {
#        rewrite ^/(.*)$ https://github.com/SEMICeu/DCAT-AP/raw/master/releases/2.0.1/dcat-ap_2.0.1.rdf redirect;
#    }


    location /adms {
        rewrite ^/(.*)$ https://joinup.ec.europa.eu/solution/asset-description-metadata-schema-adms redirect;
    }

    location /admsap {
        rewrite ^/(.*)$ https://joinup.ec.europa.eu/solution/asset-description-metadata-schema-adms redirect;
    }

#        rewrite ^/(.*)$ https://joinup.ec.europa.eu/solution/dcat-application-profile-data-portals-europe redirect;
    location /dcatap {
        rewrite ^/dcatap/(.*)$ /r5r/$1 redirect;
        rewrite ^/dcatap https://joinup.ec.europa.eu/solution/dcat-application-profile-data-portals-europe redirect;
    }

    location /statdcatap  {
        rewrite ^/(.*)$ https://joinup.ec.europa.eu/solution/statdcat-application-profile-data-portals-europe redirect;
    }

    location /geodcatap {
        rewrite ^/(.*)$ https://semiceu.github.io/GeoDCAT-AP/releases/2.0.0/ redirect;
    }

    location /fts {
        rewrite ^/(.*)$ http://63.32.50.253:8890/fts/output/doc/index-en.html redirect;
    }

    location /CCCEV {
       proxy_pass https://semiceu.github.io/CCCEV/ ;
    }

#    location /m8g {
#        rewrite ^/(.*)$ https://joinup.ec.europa.eu/solution/e-government-core-vocabularies redirect;
#    }
#
    location /cv {
        rewrite ^/cv/(.*)$ /m8g/$1 redirect;
    }

    location /m8g {

    add_header 'Access-Control-Allow-Origin' '*';
    add_header 'Access-Control-Allow-Headers' 'Origin, X-Requested-With, Content-Type, Accept';

    rewrite_by_lua_block {
	 local urisemic = require("urisemic")
	 local htmlmap = require("htmlmap")
         
	 local headers = ngx.req.get_headers(0) 
-- no additional language awareness 
--	 local langg = urisemic.order_accept_language() 
--	 local langg2 = urisemic.return_mimetype('text/html', 'text/html', headers.accept) 

-- if the uri has trailing slash

	 local uri = ngx.var.uri
	 local uri_notrailingslash = ngx.var.uri
	 local uri_notrailingslashtest, err =  ngx.re.match(uri, ".*/$", "")

         -- remove trailing slash and extension
	 -- start
	 if uri_notrailingslashtest then
             uri_notrailingslash = ngx.re.sub(uri, "(.*)/", "$1")

	 else
	     if err then
		 ngx.log(ngx.ERR, "error: ", err)
	     end

	 end

         local entity_withextension,err2 = ngx.re.match(uri_notrailingslash,".*\\..*", "")
	 local entity_noextension = uri_notrailingslash
	 local entity_extension 

	 if entity_withextension then
             entity_noextension = ngx.re.sub(uri_notrailingslash, "(.*)\\..*", "$1")
             entity_extension = ngx.re.sub(uri_notrailingslash, ".*\\.(.*)", "$1")

	 else
	     if err2 then
		 ngx.log(ngx.ERR, "error: ", err2)
	     end

	 end
	 -- end trailing slash and extension 

	 local machineprocessable = true 
         ngx.log(ngx.WARN, entity_noextension)
         ngx.log(ngx.WARN, entity_extension)

         if urisemic.ext(headers.accept) then
	    -- an explicit accept header is given and it is a machine readible format 
            -- check if there is an extension and if this is corresponds to the accept header 
	    -- TODO check if the extension is machine readible format

            local reqext = urisemic.ext(headers.accept)
            local derived_extension
	    if  entity_extension ~= nil then 
	        if urisemic.supportedext(entity_extension) then 
			if entity_extension ~= reqext then
			    -- request extension has priority over the header choice
			    derived_extension = entity_extension
			else 
			    derived_extension = reqext
			end
		else 
			-- in case extension not supported then return according to the accept header
			derived_extension = reqext
	 	end	
	    else 
		derived_extension = reqext
	    end
        
             uri = ngx.re.sub(entity_noextension, "^/m8g/(.*)", "/uri.semic.eu-puris/releases/m8g/$1." .. derived_extension, "o")
         else
            -- check if there is a machine readible file extension

	     if entity_extension ~= nil and urisemic.supportedext(entity_extension) then
                uri = ngx.re.sub(entity_noextension, "^/m8g/(.*)", "/uri.semic.eu-puris/releases/m8g/$1." .. entity_extension, "o")
             else 
		 
	 	     machineprocessable = false

		     if htmlmap.htmlmap[entity_noextension] then
			    uri = htmlmap.htmlmap[entity_noextension]
		     else
			    -- point to a default html page on the core vocs
--			    uri = ngx.re.sub(entity_noextension, "^/m8g/(.*)", "https://joinup.ec.europa.eu/solution/e-government-core-vocabularies", "o")
			    uri = "https://joinup.ec.europa.eu/solution/e-government-core-vocabularies"
		    end
              end
         end

               ngx.log(ngx.WARN, machineprocessable)

	 if machineprocessable then
               ngx.log(ngx.WARN, uri)
               ngx.req.set_uri(uri)
	 else
	-- in case of html pages trigger redirect immediately
	       ngx.log(ngx.WARN, uri)
	       return ngx.redirect(uri)
	 end

     } 
    proxy_pass  https://semiceu.github.io ;

    }

    location /p4s {

    add_header 'Access-Control-Allow-Origin' '*';
    add_header 'Access-Control-Allow-Headers' 'Origin, X-Requested-With, Content-Type, Accept';

    rewrite_by_lua_block {
	 local urisemic = require("urisemic")
	 local htmlmap = require("htmlmap")
         
	 local headers = ngx.req.get_headers(0) 
-- no additional language awareness 
--	 local langg = urisemic.order_accept_language() 
--	 local langg2 = urisemic.return_mimetype('text/html', 'text/html', headers.accept) 

-- if the uri has trailing slash

	 local uri = ngx.var.uri
	 local uri_notrailingslash = ngx.var.uri
	 local uri_notrailingslashtest, err =  ngx.re.match(uri, ".*/$", "")

         -- remove trailing slash and extension
	 -- start
	 if uri_notrailingslashtest then
             uri_notrailingslash = ngx.re.sub(uri, "(.*)/", "$1")

	 else
	     if err then
		 ngx.log(ngx.ERR, "error: ", err)
	     end

	 end

         local entity_withextension,err2 = ngx.re.match(uri_notrailingslash,".*\\..*", "")
	 local entity_noextension = uri_notrailingslash
	 local entity_extension 

	 if entity_withextension then
             entity_noextension = ngx.re.sub(uri_notrailingslash, "(.*)\\..*", "$1")
             entity_extension = ngx.re.sub(uri_notrailingslash, ".*\\.(.*)", "$1")

	 else
	     if err2 then
		 ngx.log(ngx.ERR, "error: ", err2)
	     end

	 end
	 -- end trailing slash and extension 

	 local machineprocessable = true 
         ngx.log(ngx.WARN, entity_noextension)
         ngx.log(ngx.WARN, entity_extension)

         if urisemic.ext(headers.accept) then
	    -- an explicit accept header is given and it is a machine readible format 
            -- check if there is an extension and if this is corresponds to the accept header 
	    -- TODO check if the extension is machine readible format

            local reqext = urisemic.ext(headers.accept)
            local derived_extension
	    if  entity_extension ~= nil then 
	        if urisemic.supportedext(entity_extension) then 
			if entity_extension ~= reqext then
			    -- request extension has priority over the header choice
			    derived_extension = entity_extension
			else 
			    derived_extension = reqext
			end
		else 
			-- in case extension not supported then return according to the accept header
			derived_extension = reqext
	 	end	
	    else 
		derived_extension = reqext
	    end
        
             uri = ngx.re.sub(entity_noextension, "^/p4s/(.*)", "/uri.semic.eu-puris/releases/p4s/$1." .. derived_extension, "o")
         else
            -- check if there is a machine readible file extension

	     if entity_extension ~= nil and urisemic.supportedext(entity_extension) then
                uri = ngx.re.sub(entity_noextension, "^/p4s/(.*)", "/uri.semic.eu-puris/releases/p4s/$1." .. entity_extension, "o")
             else 
		 
	 	     machineprocessable = false

		     if htmlmap.htmlmap[entity_noextension] then
			    uri = htmlmap.htmlmap[entity_noextension]
		     else
			    -- point to a default html page on the core vocs
--			    uri = ngx.re.sub(entity_noextension, "^/p4s/(.*)", "https://github.com/SEMICeu/SDG-sandbox", "o")
			    uri = "https://github.com/SEMICeu/SDG-sandbox"
		    end
              end
         end

               ngx.log(ngx.WARN, machineprocessable)

	 if machineprocessable then
               ngx.log(ngx.WARN, uri)
               ngx.req.set_uri(uri)
	 else
	-- in case of html pages trigger redirect immediately
	       ngx.log(ngx.WARN, uri)
	       return ngx.redirect(uri)
	 end

     } 
    
		
    proxy_pass  https://semiceu.github.io ;

    }
    
    location /r5r {

    add_header 'Access-Control-Allow-Origin' '*';
    add_header 'Access-Control-Allow-Headers' 'Origin, X-Requested-With, Content-Type, Accept';

    rewrite_by_lua_block {
	 local urisemic = require("urisemic")
	 local htmlmap = require("htmlmap")
         
	 local headers = ngx.req.get_headers(0) 
-- no additional language awareness 
--	 local langg = urisemic.order_accept_language() 
--	 local langg2 = urisemic.return_mimetype('text/html', 'text/html', headers.accept) 

-- if the uri has trailing slash

	 local uri = ngx.var.uri
	 local uri_notrailingslash = ngx.var.uri
	 local uri_notrailingslashtest, err =  ngx.re.match(uri, ".*/$", "")

         -- remove trailing slash and extension
	 -- start
	 if uri_notrailingslashtest then
             uri_notrailingslash = ngx.re.sub(uri, "(.*)/", "$1")

	 else
	     if err then
		 ngx.log(ngx.ERR, "error: ", err)
	     end

	 end

         local entity_withextension,err2 = ngx.re.match(uri_notrailingslash,".*\\..*", "")
	 local entity_noextension = uri_notrailingslash
	 local entity_extension 

	 if entity_withextension then
             entity_noextension = ngx.re.sub(uri_notrailingslash, "(.*)\\..*", "$1")
             entity_extension = ngx.re.sub(uri_notrailingslash, ".*\\.(.*)", "$1")

	 else
	     if err2 then
		 ngx.log(ngx.ERR, "error: ", err2)
	     end

	 end
	 -- end trailing slash and extension 

	 local machineprocessable = true 
         ngx.log(ngx.WARN, entity_noextension)
         ngx.log(ngx.WARN, entity_extension)

         if urisemic.ext(headers.accept) then
	    -- an explicit accept header is given and it is a machine readible format 
            -- check if there is an extension and if this is corresponds to the accept header 
	    -- TODO check if the extension is machine readible format

            local reqext = urisemic.ext(headers.accept)
            local derived_extension
	    if  entity_extension ~= nil then 
	        if urisemic.supportedext(entity_extension) then 
			if entity_extension ~= reqext then
			    -- request extension has priority over the header choice
			    derived_extension = entity_extension
			else 
			    derived_extension = reqext
			end
		else 
			-- in case extension not supported then return according to the accept header
			derived_extension = reqext
	 	end	
	    else 
		derived_extension = reqext
	    end
        
             uri = ngx.re.sub(entity_noextension, "^/r5r/(.*)", "/uri.semic.eu-puris/releases/r5r/$1." .. derived_extension, "o")
         else
            -- check if there is a machine readible file extension

	     if entity_extension ~= nil and urisemic.supportedext(entity_extension) then
                uri = ngx.re.sub(entity_noextension, "^/r5r/(.*)", "/uri.semic.eu-puris/releases/r5r/$1." .. entity_extension, "o")
             else 
		 
	 	     machineprocessable = false

		     if htmlmap.htmlmap[entity_noextension] then
			    uri = htmlmap.htmlmap[entity_noextension]
		     else
			    -- point to a default html page on the core vocs
--			    uri = ngx.re.sub(entity_noextension, "^/r5r/(.*)", "https://joinup.ec.europa.eu/solution/e-government-core-vocabularies", "o")
			    uri = "https://joinup.ec.europa.eu/solution/dcat-application-profile-data-portals-europe"
		    end
              end
         end

               ngx.log(ngx.WARN, machineprocessable)

	 if machineprocessable then
               ngx.log(ngx.WARN, uri)
               ngx.req.set_uri(uri)
	 else
	-- in case of html pages trigger redirect immediately
	       ngx.log(ngx.WARN, uri)
	       return ngx.redirect(uri)
	 end

     } 
    
		
    proxy_pass  https://semiceu.github.io ;
    }
		

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

}

