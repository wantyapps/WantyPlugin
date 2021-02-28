local P = {}

local function version()
	print('1.0')
end

local function commandNotFound()
	print("Command not found.")
end

function P.command(cmd)
	if cmd == "version" then
		version()
	else
		commandNotFound()
	end
end

return P
