#!/usr/bin/lua 
local file = io.open("/etc/passwd", "r") 
contents = file:read() 
file:close() 
print (contents)
