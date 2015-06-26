
package = "json-lua"
version = "0.1-1"
source = {
  url = "git://github.com/jiyinyiyong/JSON-lua"
}
description = {
  summary = "JSON encoder/decoder",
  detailed = [[
    JSON.lua
  ]],
  homepage = "https://github.com/jiyinyiyong/JSON-lua",
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
