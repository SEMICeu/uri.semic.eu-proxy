local _M = {}

--[[
function map(f, t)
    local t1 = {}
    local t_len = #t
    for i = 1, t_len do
        t1[i] = f(t[i])
    end
    return t1
end

function map2(tbl, f)
    local t = {}
    for k,v in pairs(tbl) do
        t[k] = f(v)
    end
    return t
end


--]]

local mimeheaders= { 
  "text/turtle"  ,
  "application/rdf+xml" ,
  "text/ntriples" ,
  "application/ld+json" ,
  "application/n-triples" ,
  "application/owl+xml" ,
  "application/trig" ,
  "application/n-quads" 
 }

local supported_mimeheaders= { 
  "text/turtle"  ,
  "application/rdf+xml" ,
  "text/ntriples" ,
  "application/n-triples" 
 }

local supported_extensions = { 
 "ttl",
 "rdf",
 "nt"
 }


local mimeextensions = { 
 "ttl",
 "rdf",
 "nt",
 "jsonld",
 "nt",
 "owl",
 "trig",
 "nq" 
 }

local mimeheadersextension= { 
  ["text/turtle"] = "ttl"  ,
  ["application/rdf+xml"] = "rdf" ,
  ["text/ntriples"] = "nt" ,
  ["application/ld+json"] = "jsonld" ,
  ["application/n-triples"] = "nt" ,
  ["application/owl+xml"] = "owl" ,
  ["application/trig"] = "trig" ,
  ["application/n-quads"] = "nq" 
 }

--local function ext_aux(x, t)
--    local t1 = nil
--    local t_len = #t
--    for i = 1, t_len do
--        if x == t[i] then
--		t1 = mimeextensions[i]
--	end
--    end
--    return t1
--end
--
--
local function contains(table, val)
   for i=1,#table do
      if table[i] == val then 
         return true
      end
   end
   return false
end
--function _M.ext(x)
--    return ext_aux(x, mimeheaders)
--end

function _M.ext(x)
    return mimeheadersextension[x]
end

function _M.supportedext(x)
	return contains(supported_extensions, x)
end




function _M.order_accept_language()
	--from https://github.com/fghibellini/nginx-http-accept-lang/blob/master/lang.lua

	local default_lang = ngx.var.default_lang or "en"

	local lang_header = ngx.var.http_accept_language
	if ( lang_header == nil ) then
	    return default_lang
	end


	local cleaned = ngx.re.sub(lang_header, "^.*:", "")
	local options = {}
	local iterator, err = ngx.re.gmatch(cleaned, "\\s*([a-z]+(?:-[a-z])*)\\s*(?:;q=([0-9]+(.[0-9]*)?))?\\s*(,|$)", "i")
	for m, err in iterator do
	    local lang = m[1]
	    local priority = 1
	    if m[2] ~= nil then
		priority = tonumber(m[2])
		if priority == nil then
		    priority = 1
		end
	    end
	    table.insert(options, {lang, priority})
	end


	table.sort(options, function(a,b) return b[2] < a[2] end)

--	for index, lang in pairs(options) do
--	    ngx.print(lang[1] .. " := " .. lang[2] .. "<br>")
--	end
--	ngx.print("\n")

	return options

end

function _M.order_accept()
	--from https://github.com/fghibellini/nginx-http-accept-lang/blob/master/lang.lua

	local default_accept = ngx.var.default_accept or "text/html"

	local accept_header = ngx.var.http_accept
	if ( accept_header == nil ) then
	    return default_accept
	end


	local cleaned = ngx.re.sub(accept_header, "^.*:", "")
	local options = {}
	local iterator, err = ngx.re.gmatch(cleaned, "\\s*([a-z]+(?:-[a-z])*)\\s*(?:;q=([0-9]+(.[0-9]*)?))?\\s*(,|$)", "i")
	for m, err in iterator do
	    local accept = m[1]
	    local priority = 1
	    if m[2] ~= nil then
		priority = tonumber(m[2])
		if priority == nil then
		    priority = 1
		end
	    end
	    table.insert(options, {accept, priority})
	end


	table.sort(options, function(a,b) return b[2] < a[2] end)

--	for index, accept in pairs(options) do
--	    ngx.print(accept[1] .. " := " .. accept[2] .. "<br>")
--	end
--	ngx.print("\n")

	return options

end


function _M.order_qs_header(default, headers)
	--from https://github.com/fghibellini/nginx-http-accept-lang/blob/master/lang.lua

	if ( headers == nil ) then
	    return default
	end


	local cleaned = ngx.re.sub(headers, "^.*:", "")
	local options = {}
	-- regex for accept differs from accept-language
	-- local iterator, err = ngx.re.gmatch(cleaned, "\\s*([a-z]+(?:-[a-z])*)\\s*(?:;q=([0-9]+(.[0-9]*)?))?\\s*(,|$)", "i")
	local iterator, err = ngx.re.gmatch(cleaned, "\\s*([\\S^,]+(?:\\/[\\S^,])*)\\s*(?:;\\s*q=([0-9]+(.[0-9]*)?))?\\s*(,|$)", "i")
	for m, err in iterator do
	    local accept = m[1]
	    local priority = 1
	    if m[2] ~= nil then
		priority = tonumber(m[2])
		if priority == nil then
		    priority = 1
		end
	    end
	    table.insert(options, {string.lower(accept), priority})
	end


	table.sort(options, function(a,b) return b[2] < a[2] end)

--	for index, accept in pairs(options) do
--	    ngx.print(accept[1] .. " := " .. accept[2] .. "<br>")
--	end
--	ngx.print("\n")

	return options

end

function _M.return_mimetype(default_mimetype, default, headers)
	
   	local order = _M.order_qs_header(default, headers)

	local returntype = default_mimetype
--	ngx.print(returntype)
--	ngx.print(order)
--	ngx.print('------\n')

	for index, accept in pairs(order) do
--	    ngx.print(accept[1] .. " := " .. accept[2] .. "<br>")
		local test = contains(supported_mimeheaders, accept[1]) 
--		ngx.print(test) 
--		ngx.print(accept[1]) 
--		ngx.print('   ' )
		if contains(supported_mimeheaders, accept[1]) then
			return accept[1]
	        end
	end
	return default_mimetype

end


return _M
