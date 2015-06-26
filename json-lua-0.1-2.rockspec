
package = "json-lua"
version = "0.1-2"
source = {
  url = "git://github.com/jiyinyiyong/json-lua"
}
description = {
  summary = "JSON encoder/decoder",
  detailed = [[
    JSON.lua
  ]],
  homepage = "https://github.com/jiyinyiyong/json-lua",
  license = "CC"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "module",
  modules = {
    JSON = "JSON.lua"
  }
}
