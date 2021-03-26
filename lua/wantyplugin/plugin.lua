local P = {version="0.1.1"}

-- local function version()
-- 	print('1.0')
-- end

local function runline(line)
	vim.cmd("!" ..line)
end

local function commandNotFound()
	vim.cmd("echohl ErrorMsg|echo \"Command not found.\"|echohl none")
end

function P.command(cmd)
	if cmd == "version" then
		print(P.version)
	elseif cmd == "runline" then
		vim.cmd("let line = getline(\".\")")
		runline(vim.g.line)
	else
		commandNotFound()
	end
end

return P
