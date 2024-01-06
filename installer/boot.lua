local term = require("term")
local gpu = require("component").gpu
local colors = require("colors")
local term = require("term")

term.clear()
gpu.setForeground(0x20AFFF)
gpu.set(1, 1, "[BOOT] AstroNet Boot Loader")
gpu.set(10, 1, "[BOOT] AstroNet loading config...")