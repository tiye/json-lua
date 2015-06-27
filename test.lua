
JSON = (loadfile "JSON.lua")() -- one-time load of the routines
-- JSON = require("JSON")
inspect = require("inspect")

local raw_json_text = "[1,2,[3,4]]"

local lua_value = JSON:decode(raw_json_text) -- decode example
local raw_json_text    = JSON:encode(lua_value)        -- encode example
local pretty_json_text = JSON:encode_pretty(lua_value) -- "pretty printed" version

print(inspect(lua_value))
print(inspect(raw_json_text))
print(inspect(pretty_json_text))