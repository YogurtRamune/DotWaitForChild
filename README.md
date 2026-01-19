# DotWaitForChild V1

A Roblox module that shortens :WaitForChild() verbosity

### Example

Instead of this boilerplate
```luau
local someInstance = A:WaitForChild("B"):WaitForChild("C"):WaitForChild("D"):WaitForChild("E")
```
Turns into this
```luau
local Dot = require( --[[DotWaitForChild Path]] )
local someInstance = Dot.Get(Dot.Wait(A).B.C.D.E)
```