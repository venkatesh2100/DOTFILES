return {
  {
    "okuuva/auto-save.nvim",
    cmd = { "ASToggle" }, -- Lazy-load when running ASToggle command
    event = { "InsertLeave", "TextChanged", "FocusLost" }, -- Trigger save on insert exit, text changes, or lost focus

    opts = {
      enabled = true, -- Auto-save starts enabled
      debounce_delay = 500, -- Reduce delay for faster saving (default was 1000ms)

      -- Events for immediate and deferred saving
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" }, -- Save instantly on buffer leave or lost focus
        defer_save = { "InsertLeave", "TextChanged" }, -- Deferred save on insert exit or text change
        cancel_deferred_save = { "InsertEnter" }, -- Cancels a pending deferred save
      },

      -- Skip auto-save in specific conditions
      condition = function(buf)
        local bufname = vim.api.nvim_buf_get_name(buf)
        local buftype = vim.api.nvim_buf_get_option(buf, "buftype")
        local filetype = vim.api.nvim_buf_get_option(buf, "filetype")

        -- Do not auto-save in special buffers or commit messages
        if buftype == "nofile" or buftype == "prompt" or buftype == "terminal" then
          return false
        end
        if filetype == "gitcommit" or filetype == "TelescopePrompt" then
          return false
        end
        if bufname == "" or bufname:match("^fugitive:") then
          return false
        end
        return true -- Auto-save all other buffers
      end,

      write_all_buffers = false, -- Only save the active buffer to avoid unnecessary writes
      noautocmd = true, -- Prevent autocmd execution while saving (fixes undo/redo issues)
      lockmarks = true, -- Lock marks when saving (prevents cursor jumping)
      debug = false, -- Set to `true` if you need logging for debugging
    },
  },
}
