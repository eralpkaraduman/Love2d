LOVE GAME JAM
=============

# Specccs

1-bit graphics and 400x240 resolution. 
#B1AEA8 (light grey)
#322F29 (dark grey)

The Playdate has a directional pad
A button
B button
a crank (mouse scroll wheel)

an accelerometer
a microphone

# Configuring Debugger in VSCode
put this on top of main.lua

```lua
if pcall(require, "lldebugger") then require("lldebugger").start() end
if pcall(require, "mobdebug") then require("mobdebug").start() end
```

# VSCode Plugins

Name: Local Lua Debugger
https://marketplace.visualstudio.com/items?itemName=tomblind.local-lua-debugger-vscode

Name: LOVE
https://marketplace.visualstudio.com/items?itemName=bschulte.love