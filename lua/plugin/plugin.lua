local P = {}

local function version()
	print('1.0')
end
	
function P.command(cmd)
	if cmd == "version" then
		version()
	end
end

return P
