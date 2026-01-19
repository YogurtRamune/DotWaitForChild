
--!strict

local module = {}

local meta

function module.Wait<T>(instance: T): T
	return (setmetatable({__self = instance}, meta) :: any)
end

meta = {
	__index = function(self, key)
		return module.Wait(((self.__self :: any) :: Instance):WaitForChild(key))
	end,
}

function module.Get<T>(instance: T): T
	return (instance :: any).__self;
end

return module