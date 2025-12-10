vim.api.nvim_create_user_command("LogEvent", function(opt)
    if opt.fargs[1] == 'stop' then
        require('logevent').stop()
    else
        require('logevent').start(opt.fargs)
    end
end, {
	nargs = "*",
})
