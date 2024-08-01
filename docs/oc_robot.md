# OpenComputers Robot Coding Docs
```lua
local robot = require 'robot'
```

## Introduction

**Basic Commands**<br>
The robot can do basic things like <kbd>select</kbd>; This basic command determines what slot the robot should use for commands like <kbd>drop</kbd>, <kbd>place</kbd>, <kbd>compare</kbd>, etc. The slot index goes from slot 1 to n as shown in the image. <br>

*(See [**General Commands: Basic Interactions**]())*

---

**Movement**<br>
The robot can do some pretty complex movements with the available commands. e.g. <kbd>forward</kbd>, <kbd>turnLeft</kbd>, <kbd>turnAround</kbd>, etc.

*(See [**General Commands: Basic Movements**]())*

---

**Hovering**<br>
The robot has the capability to fly, limited by it's variable, <kbd>flightHeight</kbd>, which the default is 8 of. When on air, the robot can also go down a block when flying by using the <kbd>down()</kbd> and <kbd>up()</kbd> to go up one block. 

> [!NOTE]
> If you want the robot to float when there's no blocks around, you'd need the floating upgrade.

*(See [**General Commands: Flight-related commands**]())*

## General Commands
### Basic Movements
<details>
    <summary><kbd><code>robot.forward()</code></kbd></summary>
    This function simply moves the robot one block forward (if possible).
</details>

<details>
    <summary><kbd><code>robot.back()</code></kbd></summary>
    The inverse function of <kbd>robot.forward()</kbd>, the function instead moves the robot one block backwards (if possible).
</details>

<details>
    <summary><kbd><code>robot.turnLeft()</code></kbd></summary>
    This function simply makes the robot turn 90° to the left.
</details>

<details>
    <summary><kbd><code>robot.turnRight()</code></kbd></summary>
    This function simply makes the robot turn 90° to the right.
</details>

<details>
    <summary><kbd><code>robot.turnAround()</code></kbd></summary>
    This function simply makes the robot turn 180° to the right, essentially just making it run <kbd>robot.turnRight()</kbd> two times.
</details>

### Flight-related commands
<details>
    <summary><kbd><code>robot.up()</code></kbd></summary>
    This function simply moves the robot one block up (if possible).
</details>

<details>
    <summary><kbd><code>robot.down()</code></kbd></summary>
    The inverse function of <kbd>robot.up</kbd>, the function instead moves the robot one block down (if possible).
</details>

---

### Basic Interaction
<details>
    <summary><kbd><code>robot.use(side:number, sneak:bool, duration:number)</code></kbd></summary>
    This function will make the robot use the item equipped, which is simply doing what <kbd>RCLick</kbd> does. <br>
    <br>
    <strong>Parameters</strong>
    <li><code>side</code>: If a value is passed, then the robot will try to only <kbd>RClick</kbd> the surface as specified; otherwise, the robot will try all possible sides. (Refer to <a href="https://ocdoc.cil.li/api:sides">Sides API</a>) </li> <i>(optional)</i> 
    <li><code>sneak</code>: If the value given is <kbd>true</kbd> then the robot will do <kbd>SHIFT + RClick</kbd>  else, it will do a normal <kbd>RClick</kbd>  </li> <i>(optional, false by default)</i> 
    <li><code>duration</code>: This parameter determines how long should the robot "hold" the <kbd>RClick</kbd> button. </li> <i>(optional, 0 by default)</i> 
    <br><br>
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>useUp</kbd>, <kbd>useDown</kbd>) </span> </i> </p>
</details>

<details>
    <summary><kbd><code>robot.swing(side:number, sneak:bool)</code></kbd></summary>
    This function will make the robot mine/interact the item equipped, which is simply doing what <kbd>LCLick</kbd> does. <br>
    <br>
    <strong>Parameters</strong>
    <li><code>side</code>: If a value is passed, then the robot will try to only <kbd>LClick</kbd> the surface as specified; otherwise, the robot will try all possible sides. (Refer to <a href="https://ocdoc.cil.li/api:sides">Sides API</a>) </li> <i>(optional)</i> 
    <li><code>sneak</code>: If the value given is <kbd>true</kbd> then the robot will do <kbd>SHIFT + LClick</kbd> else, it will do a normal <kbd>LClick</kbd>  </li> <i>(optional, false by default)</i> 
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>swingUp</kbd>, <kbd>swingDown</kbd>) </span> </i> </p>
</details>

<details>
    <summary><kbd><code>robot.place(side:number, sneak:bool)</code></kbd></summary>
    This function will simply make the robot place the block currently selected. (if possible) <br>
    <br>
    <strong>Parameters</strong>
    <li><code>side</code>: If a value is passed, then the robot will try to only place the block on the side specified; otherwise, the robot will try all possible sides. (Refer to <a href="https://ocdoc.cil.li/api:sides">Sides API</a>) </li> <i>(optional)</i> 
    <li><code>sneak</code>: If the value given is <kbd>true</kbd> then the robot will place the block whilst sneaking. Else, it will place it normally. </li> <i>(optional, false by default)</i> 
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>placeUp</kbd>, <kbd>placeDown</kbd>) </span> </i> </p>
</details>

### Advanced Interactions
<details>
    <summary><kbd><kbd>inline</kbd> <code>robot.compare()</code></kbd></summary>
    Compares the block infront <i>(or up/down)</i> of the robot to the item selected. Returns true if the block compared if the block compared is equal-to the item selected.   
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>compareUp</kbd>, <kbd>compareDown</kbd>) </span> </i> </p>
    <b>Returns: </b> If the block compared is the same as the item selected.
</details>

> [!TIP]
> If you want to use to compare a block infront of the robot and is on another slot (other than the selected), then I recommend using <kbd>compareTo</kbd> instead (to save lines by not using the <kbd>select</kbd> command). If the block is either above/below the robot, then use compare.
<details>
    <summary><kbd><kbd>inline</kbd> <code>robot.compareTo(slot:number)</code></kbd></summary>
    Compares the block infront of the robot to the item on the slot passed. Returns true if the block compared is equal-to the item slot passed.   
    <br><br>
    <b>Returns: </b> If the block compared is the same as the item in the slot passed.
</details>
