
JSON.lua
----

This project was originally created by Jeffrey Friedl: http://regex.info/blog/lua/json

This repo is forked for LuaRocks.

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

Output:

```kua
{ 1, 2, { 3, 4 } }
"[1,2,[3,4]]"
"[ 1, 2, [ 3, 4 ] ]"
```

Notice that `encode_pretty` is not indented style. And it's a bug need to be fixed.

### array_newline option

```lua
local pretty_json_text = JSON:encode_pretty(lua_value, nil, 
           { pretty = true, align_keys = false, array_newline = true, indent = "|   " })
print(pretty_json_text)
```

Output:

```kua
[
|   1,
|   2,
|   [
|   |   3,
|   |   4
|   ]
]
```
 

### Test

```
lua test.lua
```

### License

http://creativecommons.org/licenses/by/3.0/deed.en_US
