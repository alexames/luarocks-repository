rockspec_format = "3.0"
package = "lua-minisat"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/alexames/lua-minisat.git",
  tag = "v0.1.0"
}

description = {
  summary = "Lua bindings for the MiniSat SAT solver",
  detailed = [[
    lua-minisat provides Lua bindings for the MiniSat SAT solver.
    It exposes the Solver class, variable creation, literal manipulation,
    clause addition, and solving with optional assumptions.
  ]],
  homepage = "https://github.com/alexames/lua-minisat",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  MINISAT = {
    header = "minisat/core/Solver.h",
    library = "minisat"
  },
  LUAWRAPPER = {
    header = "luawrapper.hpp"
  }
}

build = {
  type = "cmake",
  variables = {
    CMAKE_BUILD_TYPE = "Release",
    LUA_MINISAT_ENABLE_INSTALL = "ON",
    CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    CMAKE_PREFIX_PATH = "$(LUA_BINDIR)/.."
  }
}
