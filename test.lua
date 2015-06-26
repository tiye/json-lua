
JSON = (loadfile "JSON.lua")() -- one-time load of the routines
inspect = require("inspect")

local raw_json_text = "[1,2,3]"
local lua_value = JSON:decode(raw_json_text) -- decode example

print(inspect(lua_value))
