require("options")
require("plugins")
require("remaps")
require("magic")
require("commands")

-- print("hi from init.lua")

-- require("after")
if require('util.file_exists')('.nvimrc.lua') then
    dofile('.nvimrc.lua')
end
