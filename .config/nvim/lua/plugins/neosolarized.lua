local status, n = pcall(require, 'neosolarized')
if (not status) then return end

n.setup({ commit_italics = true })

local colorbuddy = require('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local styles = colorbuddy.styles


Color.new('black', '#001e37')
Color.new('ber', '#00040c')
Color.new('blus', '#09B1F5')
Group.new('CursorLine', colors.none, colors.black, styles.NONE, colors.ber)
Group.new('CursorLineNr', colors.blue, colors.ber, styles.NONE, colors.black)
Group.new('Visual', colors.none, colors.white, styles.NONE)
Group.new('Tag', colors.blue, colors.NONE, styles.NONE)
Group.new('Structure', colors.blue, colors.NONE, styles.NONE)
Group.new('Special', colors.blus, colors.NONE, styles.NONE)


