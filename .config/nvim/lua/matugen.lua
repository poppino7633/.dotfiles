 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#111416',
    base01 = '#1e2022',
    base02 = '#282a2c',
    base03 = '#8b9197',
    base04 = '#c1c7cd',
    base05 = '#e2e2e5',
    base06 = '#e2e2e5',
    base07 = '#e2e2e5',
    base08 = '#ffb4ab',
    base09 = '#e1b9ea',
    base0A = '#b7c9d7',
    base0B = '#9ccded',
    base0C = '#e1b9ea',
    base0D = '#9ccded',
    base0E = '#b7c9d7',
    base0F = '#d3e5f3',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#e2e2e5',          bg = '#111416' })
  hi('TelescopeBorder',         { fg = '#8b9197',             bg = '#111416' })
  hi('TelescopePromptNormal',   { fg = '#e2e2e5',          bg = '#111416' })
  hi('TelescopePromptBorder',   { fg = '#8b9197',             bg = '#111416' })
  hi('TelescopePromptPrefix',   { fg = '#9ccded',             bg = '#111416' })
  hi('TelescopePromptCounter',  { fg = '#c1c7cd',  bg = '#111416' })
  hi('TelescopePromptTitle',    { fg = '#111416',             bg = '#9ccded' })
  hi('TelescopePreviewTitle',   { fg = '#111416',             bg = '#b7c9d7' })
  hi('TelescopeResultsTitle',   { fg = '#111416',             bg = '#e1b9ea' })
  hi('TelescopeSelection',      { fg = '#e2e2e5',          bg = '#282a2c' })
  hi('TelescopeSelectionCaret', { fg = '#9ccded',             bg = '#282a2c' })
  hi('TelescopeMatching',       { fg = '#9ccded',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#e2e2e5',          bg = '#111416' })
  hi('MiniPickBorder',         { fg = '#8b9197',             bg = '#111416' })
  hi('MiniPickPrompt',   { fg = '#e2e2e5',          bg = '#111416' })
  hi('MiniPickPromptPrefix',   { fg = '#9ccded',             bg = '#111416' })
  hi('MiniPickBorderText',    { fg = '#111416',             bg = '#9ccded' })
  hi('MiniPickMatchCurrent',      { fg = '#e2e2e5',          bg = '#282a2c' })
  hi('MiniPickPromptCaret', { fg = '#9ccded',             bg = '#282a2c' })
  hi('MiniPickMatchRanges',       { fg = '#9ccded',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
