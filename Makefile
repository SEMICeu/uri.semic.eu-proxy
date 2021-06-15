dockercompose:
	sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

down:
	docker-compose -f dockercompose.yml down --remove-orphans

run: 
	docker-compose -f dockercompose.yml up -d

logs:
	docker-compose -f dockercompose.yml logs


logs-ng:
	docker-compose -f dockercompose.yml logs uriproxy

my-nginx:
	pushd my-nginx
	docker build --build-arg ENABLED_MODULES="ndk lua" -t my-nginx .

nginx: my-nginx 
	docker build -f Dockerfile.nginx --build-arg ENABLED_MODULES="ndk lua" -t ng .

caddy:
	docker build -f Dockerfile.caddy -t cad .



test:
	curl --verbose -k -L -o test1 http://localhost/CCCEV/343 
	curl --verbose -k -L -o test2 http://localhost:82/CCCEV/

.PHONY: test2
test2: 
	curl --verbose -H "Accept:text/turtle" -k -L -o test2 http://localhost/m8g

.PHONY: test3
test3: 
	curl -H "Accept:text/html" -k -L -o test3 http://localhost/m8g


.PHONY: test4
test4: 
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:text/html" -k -L -o test4 http://localhost/m8g

.PHONY: test5
test5: 
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:text/html; q=0.5, application/RDF+XML; q=0.7, */*; q=0.3" -k -L -o test5 http://localhost/m8g

.PHONY: test6
test6: 
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:text/turtle" -k -L -o test6 http://localhost/m8g
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:text/turtle" -k -L -o test6b https://bertvannuffelen.github.io/semictest/releases/dist.ttl
	
.PHONY: test7
test7: 
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:text/turtle" -k -L -o test7.ttl http://localhost/m8g/cccev/bias
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/n-triples" -k -L -o test7.nt http://localhost/m8g/cccev/bias
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/rdf+xml" -k -L -o test7.rdf http://localhost/m8g/cccev/bias
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:text/html" -k -L -o test7.ttl http://localhost/m8g/cccev/bias

.PHONY: test8
# support for https://www.w3.org/TR/swbp-vocab-pub/#recipe2: URIs with slashes 
test8: 
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/n-triples" -k -L -o test8a.nt http://localhost/m8g/
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/n-triples" -k -L -o test8b.nt http://localhost/m8g/cccev/bias
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/n-triples" -k -L -o test8c.nt http://localhost/m8g/cccev/bias.nt


.PHONY: test9
# case sensitivity test
test9: 
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/n-triples" -k -L -o test9a.nt http://localhost/m8g/cccev/bias
	curl -H "Accept-Language: en-us,en;q=0.5, nl;q=0.7" -H "Accept:application/n-triples" -k -L -o test9b.nt http://localhost/m8g/cccev/Bias
