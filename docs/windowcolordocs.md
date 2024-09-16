## Window Header Color Docs
<i>a Lua script made by <b>[T-Bar](https://github.com/TBar09)</b></i>

---

**Compatibility:** <br>
Psych Engine versions: **[0.6.3](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/0.6.3), [0.7.x](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/0.7), [1.0-pr](https://github.com/ShadowMario/FNF-PsychEngine/releases/tag/1.0-prerelease)**

---

## Step-by-step Guide
1. Download the script from the [**Gamebanana Page**](https://gamebanana.com/tools/17992)
2. Unzip the downloaded file
3. Put the `include` folder inside of `mods/` or if you have a modpack, `mods/[modpack name]`
4. Put `WindowColorMode.lua` file inside `scripts` or in `data/[song]`
5. Write your code in the template below all the code in `WindowColorMode.lua` 

---

## Functions

`resetScreenSize()` <br>
Updates the window's color
> [!IMPORTANT]
> This function is used to update the window's property. Use this function after you use a function that changes the window's color to force the effect immediately 

---

`setDarkMode()` <br>
This function simply makes your window header's to dark mode. <br>
<sub>*Similar to <kbd>setWindowColorMode(true)</kbd>*</sub>

---

`setLightMode()` <br>
This function simply makes your window header's to light mode. <br>
<sub>*Similar to <kbd>setWindowColorMode(false)</kbd>*</sub>

---

`setWindowColorMode(isDark: boolean)` <br>
Shortcut to both `setDarkMode()` and `setLightMode` into one function.

**Parameters:**
- `isDark`: Set to dark mode?

---

`setWindowBorderColor(hex: <string, number>, setHeader: boolean, setBorder: boolean)` <br>
<sup>*(Windows 11 exclusive)*</sup> <br>
Sets the window border and header to a color of your choosing.

**Parameters:**
- `hex`: The hexidecimal for the color. Can be both `string` (`'#RRGGBB', '0xRRGGBB' or 'RRGGBB'`) and a `number` (`0xRRGGBB`) <br>
<sup>(Only accepts numbers and hex format `0xBBGGRR` on version 2.0)</sup>
- `setHeader`: Do you want to set the header's color?
- `setBorder`: Do you want to set the window border's color?

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
© 2024 [T-Bar](https://github.com/TBar09) and [GhostglowDev](https://github.com/AlsoGhostglowDev). All rights reserved. 
</i></sub>
