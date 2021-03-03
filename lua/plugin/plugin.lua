local P = {version="1.0"}

-- local function version()
-- 	print('1.0')
-- end

local function commandNotFound()
	vim.cmd("echohl ErrorMsg|echo \"Command not found.\"|echohl none")
end

function P.command(cmd)
	if cmd == "version" then
		print(P.version)
	else
		commandNotFound()
	end
end

return P
