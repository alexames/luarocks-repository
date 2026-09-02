rockspec_format = "3.0"
package = "lua-midi"
version = "1.0.0-1"

source = {
   url = "git://github.com/alexames/lua-midi.git",
   tag = "v1.0.0",
}

description = {
   summary = "MIDI file reading, parsing, and writing for Lua",
   detailed = [[
A comprehensive library for reading, writing, and manipulating MIDI files.
Supports all standard MIDI events, tracks, instruments, and file formats.
   ]],
   homepage = "https://github.com/alexames/lua-midi",
   license = "MIT",
   maintainer = "Alexander Ames <Alexander.Ames@gmail.com>",
   labels = {
      "midi",
      "music",
      "audio",
   },
}

dependencies = {
   "lua >= 5.4",
   "llx",
}

test = {
   type = "command",
   command = "cd tests && for f in test_*.lua; do echo \"=== $f ===\"; lua \"$f\" || exit 1; done",
}

build = {
   type = "builtin",
   modules = {
      ["lua-midi"] = "src/init.lua",
      ["lua-midi.event"] = "src/event.lua",
      ["lua-midi.instrument"] = "src/instrument.lua",
      ["lua-midi.io"] = "src/io.lua",
      ["lua-midi.percussion"] = "src/percussion.lua",
      ["lua-midi.midi_file"] = "src/midi_file.lua",
      ["lua-midi.track"] = "src/track.lua",
      ["lua-midi.validation"] = "src/validation.lua",
   },
}
