local M = {}

-- setting prefix for keymaps.
---@param prefix string
function M.set_prefix(prefix)
-- setting keymaps for the plugin related to the prefix.
---@param key string
---@param cmd string|function
---@param desc string
---@param modes? table
    return function(key, cmd, desc, modes)
        if modes == nil then
            vim.keymap.set("n", key, cmd, { desc = prefix .. ": " .. desc })
            return
        end
        vim.keymap.set(modes, key, cmd, { desc = prefix .. ": " .. desc })
    end
end

return M
