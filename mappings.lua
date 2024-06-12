local M = {}

M.dap = {
  n = {
    ["<leader>cdr"] = {
      "<cmd> RustDebuggables <CR>",
      "Run Debuggables (Rust)"
    },
    ["<leader>cdm"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
    },
    ["<leader>cds"] = {
      function()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
    }
  }
}

return M
