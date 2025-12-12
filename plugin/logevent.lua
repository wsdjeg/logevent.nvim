vim.api.nvim_create_user_command("LogEvent", function(opt)
    if opt.fargs[1] == 'stop' then
        require('logevent').stop()
    else
        require('logevent').start(opt.fargs)
    end
end, {
	nargs = "*",
    complete = function(arglead)
        if vim.startswith('stop', arglead) then
            return {'stop'}
        else
            return vim.fn.getcompletion(arglead, 'event')
        end
    end
})
