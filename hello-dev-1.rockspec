package = "hello"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com:alexames/hello.git"
}
description = {
   homepage = "www.google.com",
   license = "public domain"
}
build = {
   type = "builtin",
   modules = {
      hello = "hello.lua"
   }
}
