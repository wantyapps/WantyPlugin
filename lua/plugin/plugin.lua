local P = {}

local function version()
	print('1.0')
end

local function commandNotFound()
	print("\033[0;31mCommand not found.\033[0m")
end

function P.command(cmd)
	if cmd == "version" then
		version()
	else
		commandNotFound()
	end
end

return P
