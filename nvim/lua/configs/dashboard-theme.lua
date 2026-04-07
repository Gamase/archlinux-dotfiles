-- Colores dashboard
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff0033", bold = true })
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#ff8c42", bold = true })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#cc2233", italic = true })
vim.api.nvim_set_hl(0, "DashboardKey", { fg = "#ff0033", bold = true })
vim.api.nvim_set_hl(0, "DashboardDesc", { fg = "#ff8c42", bold = true })
vim.api.nvim_set_hl(0, "DashboardIcon", { fg = "#ff0033", bg = "NONE", nocombine = true })
-- Transparencia
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "NONE" })
-- Quitar rayas verticales en el dashboard
vim.api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  callback = function()
    vim.opt_local.colorcolumn = ""
    vim.opt_local.cursorcolumn = false
    vim.opt_local.cursorline = false
    -- Desactivar indent-blankline
    vim.b.indent_blankline_enabled = false
    pcall(function()
      require("ibl").setup_buffer(0, { enabled = false })
    end)
  end,
})
