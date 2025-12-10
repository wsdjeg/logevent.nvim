local M = {}

local log = require("logger").derive("logevent")
local id
local group = vim.api.nvim_create_augroup("logevent", { clear = true })
function M.start(fargs)
	M.stop()
	local events = {}
	if #fargs == 0 then
		events = vim.tbl_filter(function(e)
			return e ~= "SafeState"
		end, vim.fn.getcompletion("", "event"))
	else
		local e = {}
		for _, v in ipairs(fargs) do
			for _, ev in ipairs(vim.fn.getcompletion(v, "event")) do
				e[ev] = true
			end
		end
		for ev, _ in pairs(e) do
			table.insert(events, ev)
		end
	end
	if #events > 0 then
		id = vim.api.nvim_create_autocmd(events, {
			callback = vim.schedule_wrap(function(event)
				log.debug(event.event .. '\n' .. vim.inspect(event))
			end),
			group = group,
		})
	end
end

function M.stop()
	pcall(vim.api.nvim_del_autocmd, id)
end

return M
