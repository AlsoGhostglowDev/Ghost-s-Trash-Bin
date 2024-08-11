# OpenComputers Robot Coding Docs
```lua
local robot = require 'robot'
```

## Introduction

**Basic Commands**<br>
The robot can do basic things like <kbd>select</kbd>; This basic command determines what slot the robot should use for commands like <kbd>drop</kbd>, <kbd>place</kbd>, <kbd>compare</kbd>, etc. The slot index goes from slot 1 to n as shown in the image. <br>

*(See [**General Commands: Basic Interactions**](https://github.com/AlsoGhostglowDev/Ghost-s-Trash-Bin/blob/main/docs/oc_robot.md#basic-interaction))*

---

**Movement**<br>
The robot can do some pretty complex movements with the available commands. e.g. <kbd>forward</kbd>, <kbd>turnLeft</kbd>, <kbd>turnAround</kbd>, etc.

*(See [**General Commands: Basic Movements**](https://github.com/AlsoGhostglowDev/Ghost-s-Trash-Bin/blob/main/docs/oc_robot.md#basic-movements))*

---

**Hovering**<br>
The robot has the capability to fly, limited by it's variable, <kbd>flightHeight</kbd>, default being 8 blocks. The robot can also go up and down a block by using the <kbd>up()</kbd> and <kbd>down()</kbd> functions. 

> [!NOTE]
> If you want the robot to float when there're no blocks around, you'll need the floating upgrade.

*(See [**General Commands: Flight-related commands**](https://github.com/AlsoGhostglowDev/Ghost-s-Trash-Bin/blob/main/docs/oc_robot.md#flight-related-commands))*

## General Commands
### Basic Movements
<details>
    <summary><kbd>robot.forward()</kbd></summary>
    This function moves the robot forward. <br><br>
    <b>Returns</b>: <kbd>true</kbd> if the robot successfully moved, <kbd>nil</kbd> otherwise. If movement fails a secondary result will be returned describing why it failed, which will either be <code>impossible move</code>, <code>not enough energy</code> or the description of the obstacle as <code>robot.detect</code> would return.
</details>

<details>
    <summary><kbd>robot.back()</kbd></summary>
    Similarily to <code>robot.forward()</code>, but goes back.
</details>

<details>
    <summary><kbd>robot.turnLeft()</kbd></summary>
    This function simply makes the robot turn 90° to the left.
</details>

<details>
    <summary><kbd>robot.turnRight()</kbd></summary>
    This function simply makes the robot turn 90° to the right.
</details>

<details>
    <summary><kbd>robot.turnAround()</kbd></summary>
    This function simply makes the robot turn 180° to the right, essentially just making it run <kbd>robot.turnRight()</kbd> two times.
</details>

### Flight-related commands
<details>
    <summary><kbd>robot.up()</kbd></summary>
    Similarily to <code>robot.forward()</code>, this function makes the robot go up.
</details>

<details>
    <summary><kbd>robot.down()</kbd></summary>
    Similarily to <code>robot.forward()</code>, this function makes the robot go down.
</details>

> [!NOTE]
> I was too lazy to edit the bottom part so it might have grammar issues and spelling errors - Execute

---

### Basic Interaction
<details>
    <summary><kbd>robot.use(side:number, sneak:bool, duration:number)</kbd></summary>
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
    <summary><kbd>robot.swing(side:number, sneak:bool)</kbd></summary>
    This function will make the robot mine/interact the item equipped, which is simply doing what <kbd>LCLick</kbd> does. <br>
    <br>
    <strong>Parameters</strong>
    <li><code>side</code>: If a value is passed, then the robot will try to only <kbd>LClick</kbd> the surface as specified; otherwise, the robot will try all possible sides. (Refer to <a href="https://ocdoc.cil.li/api:sides">Sides API</a>) </li> <i>(optional)</i> 
    <li><code>sneak</code>: If the value given is <kbd>true</kbd> then the robot will do <kbd>SHIFT + LClick</kbd> else, it will do a normal <kbd>LClick</kbd>  </li> <i>(optional, false by default)</i> 
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>swingUp</kbd>, <kbd>swingDown</kbd>) </span> </i> </p>
</details>

<details>
    <summary><kbd>robot.place(side:number, sneak:bool)</kbd></summary>
    This function will simply make the robot place the block currently selected. (if possible) <br>
    <br>
    <strong>Parameters</strong>
    <li><code>side</code>: If a value is passed, then the robot will try to only place the block on the side specified; otherwise, the robot will try all possible sides. (Refer to <a href="https://ocdoc.cil.li/api:sides">Sides API</a>) </li> <i>(optional)</i> 
    <li><code>sneak</code>: If the value given is <kbd>true</kbd> then the robot will place the block whilst sneaking. Else, it will place it normally. </li> <i>(optional, false by default)</i> 
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>placeUp</kbd>, <kbd>placeDown</kbd>) </span> </i> </p>
</details>

### Advanced Interactions
<details>
    <summary><kbd><kbd>inline</kbd> robot.compare()</kbd></summary>
    Compares the block infront <i>(or up/down)</i> of the robot to the item selected. Returns true if the block compared if the block compared is equal-to the item selected.   
    <p style="color:red;">* <i> <span style="color:white;"> This command has an up/down function. (e.g. <kbd>compareUp</kbd>, <kbd>compareDown</kbd>) </span> </i> </p>
    <b>Returns: </b> If the block compared is the same as the item selected.
</details>

> [!TIP]
> If you want to compare a block infront of the robot and is on another slot (other than the selected), then I recommend using <kbd>compareTo</kbd> instead (to save lines by not using the <kbd>select</kbd> command). If the block is either above/below the robot, then use compare.
<details>
    <summary><kbd><kbd>inline</kbd> robot.compareTo(slot:number)</kbd></summary>
    Compares the block infront of the robot to the item on the slot passed. Returns true if the block compared is equal-to the item slot passed.   
    <br><br>
    <b>Returns: </b> If the block compared is the same as the item in the slot passed.
</details>
