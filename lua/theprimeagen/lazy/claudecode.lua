-- Claude Code IDE integration for Neovim  ────────────────────────────────
-- Requires: ❶ Claude Code CLI ≥ v1.0.0 ( npm i -g @anthropic-ai/claude-code )
--           ❷ folke/snacks.nvim for a slick terminal wrapper.
-- Docs:     github.com/coder/claudecode.nvim

return {
  "coder/claudecode.nvim",            -- plugin repo
  version = "*",                      -- always get the latest tag
  lazy = false,                       -- start at launch (so Claude auto-connects)
  dependencies = { "folke/snacks.nvim" },  -- better terminal splits
  cmd = { "ClaudeCode", "ClaudeCodeFocus", "ClaudeCodeSend" }, -- lazy-load fallback
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>",         desc = "Claude ▸ Toggle panel" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>",    desc = "Claude ▸ Focus panel" },
    { "<leader>ar", "<cmd>ClaudeCode --resume<cr>",desc = "Claude ▸ Resume chat" },
    { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Claude ▸ Continue" },
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Claude ▸ Accept diff" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>",  desc = "Claude ▸ Reject diff" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v",
      desc = "Claude ▸ Send selection" },
  },

  opts = {
    -- Server & logging ---------------------------------------------------
    auto_start = true,                -- start websocket automatically
    log_level  = "info",              -- "trace" | "debug" | "info" | "warn" | "error"
    port_range = { min = 10000, max = 65535 },

    -- Terminal panel -----------------------------------------------------
    terminal = {
      split_side            = "right",   -- "left" | "right"
      split_width_percentage= 0.30,      -- 30 % of the editor
      provider              = "snacks",  -- "auto" | "snacks" | "native"
      auto_close            = true,
    },

    -- Diff workflow ------------------------------------------------------
    diff_opts = {
      auto_close_on_accept = true,
      vertical_split       = true,
      open_in_current_tab  = true,
    },
  },
}

