
JSON.lua
----

This repo is a mirror of: http://regex.info/blog/lua/json

Just make it installable from LuaRocks.

### Usage

By running Luarocks you will actually get a `/usr/local/share/lua/5.2/JSON.lua`.

```
luarocks install json-lua
```

And then you may import code like this:

```lua
JSON = require("JSON")
inspect = require("inspect")

local raw_json_text = "[1,2,[3,4]]"

local lua_value = JSON:decode(raw_json_text) -- decode example
local raw_json_text    = JSON:encode(lua_value)        -- encode example
local pretty_json_text = JSON:encode_pretty(lua_value) -- "pretty printed" version

print(inspect(lua_value))
print(inspect(raw_json_text))
print(inspect(pretty_json_text))
```

### License

http://creativecommons.org/licenses/by/3.0/deed.en_US
