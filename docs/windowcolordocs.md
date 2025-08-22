## Window Color Mode Documentation
<i>a Lua script made by <b>[T-Bar](https://github.com/TBar09)</b></i>

<b>[`Download Script`](https://gamebanana.com/tools/17992)</b>

[`Haxelib version`](https://lib.haxe.org/p/hxWindowColorMode/)

---

**Compatibility:** <br>
Psych Engine versions: **[Latest](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/1.0.4), [1.0-pr](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/1.0-prerelease), [0.7.x](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/0.7), [0.6.3](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/0.6.3), [0.5.2h](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/0.5.2h)**

> [!NOTE]
> As of the latest version (3.5), any Psych Engine version with LuaJIT support & FFI access is expected to work with this script. The listed versions above are just the tested ones.
---

## Step-by-step Guide
### Latest (3.5) & under 2.0
1. Download the script from the [**Gamebanana Page**](https://gamebanana.com/tools/17992)
2. Unzip the downloaded file
3. Put `WindowColorMode.lua` file inside `scripts` or in `data/[song]`
5. Write your code in the template below all the code in `WindowColorMode.lua`

### Versions 2.0 to 3.0
1. Download the script from the [**Gamebanana Page**](https://gamebanana.com/tools/17992)
2. Unzip the downloaded file
3. Put the `include` folder inside of `mods/` or if you have a modpack, `mods/[modpack name]`
4. Put `WindowColorMode.lua` file inside `scripts` or in `data/[song]`
5. Write your code in the template below all the code in `WindowColorMode.lua`

---

## Functions
### Color Mode Functions
```lua
resetScreenSize()
```
Updates the window's color.<br>

> [!WARNING]
> This function is deprecated as of version 2.5! Please use `redrawWindowHeader`!

> [!IMPORTANT]
> This function is used to update the window's property. Use this function after you use a function that changes the window's color to force the effect immediately.

---

```lua
redrawWindowHeader()
```
Updates the window's color by redrawing the window header.

> [!IMPORTANT]
> Use this function after you use a function that changes the window's color to force the effect immediately! This is only needed for Windows 10 machines, as Windows 11 machines automatically update the color.

---

```lua
setDarkMode()
```
This function simply makes your window header's to dark mode. <br>
<sub>*Shortcut to <kbd>setWindowColorMode(true)</kbd>*</sub>

---

```lua
setLightMode()
```
This function simply makes your window header's to light mode. <br>
<sub>*Shortcut to <kbd>setWindowColorMode(false)</kbd>*</sub>

---

```lua
setWindowColorMode(isDark: boolean)
```
Shortcut to both `setDarkMode` and `setLightMode` into one function.

**Parameters:**
- `isDark`: Set to dark mode?

---
### Custom Color Functions

```lua
setWindowBorderColor(hex: <string, number>, setHeader: boolean, setBorder: boolean)
```
<sup>*(Windows 11 exclusive)*</sup> <br>
Sets the window border and header to a color of your choosing.

**Parameters:**
- `hex`: The hexidecimal for the color. Can be both `string` (`'#RRGGBB', '0xRRGGBB' or 'RRGGBB'`) and a `number` (`0xRRGGBB`) <br>
<sup>(Only accepts numbers and hex format `0xBBGGRR` on version 2.0)</sup>
- `setHeader`: Do you want to set the header's color?
- `setBorder`: Do you want to set the window border's color?

---

```lua
setWindowTitleColor(hex: <string, number>)
```
<sup>*(Windows 11 exclusive)*</sup> <br>
Sets the window title to a color of your choosing.

**Parameters:**
- `hex`: The hexidecimal for the color. Can be both `string` (`'#RRGGBB', '0xRRGGBB' or 'RRGGBB'`) and a `number` (`0xRRGGBB`) <br>

---

```lua
setWindowCornerType(cornerType: number)
```
<sup>*(Windows 11 exclusive)*</sup> <br>
Sets the window corners to a certain mode (example: square corners or rounded corners).<br>
The script offers you a table of the available modes, including:
<br>
<br>`windowCornerType.DEFAULT`: The default corner type. Usually your system default.
<br>`windowCornerType.DONOTROUND`: Makes the corners square, similar to Windows 10 windows.
<br>`windowCornerType.ROUND`: Forces the corners round, similar to Windows 11 windows.
<br>`windowCornerType.ROUNDSMALL`: Forces the corners round, except they have a smaller radius.

**Parameters:**
- `cornerType`: The type to set the corner to <br>

---

**Editor Note:**
```
example(arg1: type, arg2: <type1. type2>) -> returns
   ^                            ^
 fname                  one of two or more

Function description

- `arg1`: Description
- `arg2`: More description

(Optional)
**Example:**
`example(true, ...)`
```

<sub><i>
a wiki made by [GhostglowDev](https://github.com/AlsoGhostglowDev) <br>
© 2024 - 2025 [T-Bar](https://github.com/TBar09) and [GhostglowDev](https://github.com/AlsoGhostglowDev). All rights reserved. 
</i></sub>

