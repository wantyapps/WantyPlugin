local P = {version="1.0"}

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
		-- runline(vim.api.nvim_exec("execute \'echo getline(\".\")\'", true))
		vim.cmd("let line = getline(\".\")")
		runline(vim.g.line)
	else
		commandNotFound()
	end
end

return P
