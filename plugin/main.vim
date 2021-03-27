function! CmdCompletion(...)
	let l:commands = ['version', 'runline']
	return join(l:commands, "\n")
endfunction

command! -complete=custom,CmdCompletion -nargs=1 Wanty lua require('wantyplugin.plugin').command(<f-args>)
