local term = require("term")
local gpu = require("component").gpu
local colors = require("colors")


gpu.setForeground(0x20AFFF)
gpu.setBackground(0x20AFFF)
gpu.set(1, 1, "AstroNet Boot Loader [!]")
return select(2, gpu.get(1, 1)) == 0x20AFFF