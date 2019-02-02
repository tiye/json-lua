
package = "json-lua"
version = "0.1-3"
source = {
  url = "git+https://github.com/jiyinyiyong/json-lua.git"
}
description = {
  summary = "JSON encoder/decoder",
  detailed = [[
    Forked from JSON.lua
  ]],
  homepage = "https://github.com/jiyinyiyong/json-lua",
  license = "CC"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    JSON = "JSON.lua"
  }
}
