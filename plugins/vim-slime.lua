 -- send code from python/r/qmd documets to a terminal or REPL
 -- like ipython, R, bash
return {
  {
    'jpalardy/vim-slime',
    init = function()
      Quarto_is_in_python_chunk = function()
        require 'otter.tools.functions'.is_otter_language_context('python')
      end

      vim.cmd [[
      function SlimeOverride_EscapeText_quarto(text)
      call v:lua.Quarto_is_in_python_chunk()
      if exists('g:slime_python_ipython') && len(split(a:text,"\n")) > 1 && b:quarto_is_python_chunk
      return ["%cpaste -q", "\n", g:slime_dispatch_ipython_pause, a:text, "--", "\n"]
      else
      return a:text
      end
      endfunction
      ]]

      local function mark_terminal()
        vim.g.slime_last_channel = vim.b.terminal_job_id
        vim.print(vim.g.slime_last_channel)
      end

      local function set_terminal()
        vim.b.slime_config = { jobid = vim.g.slime_last_channel }
      end

      vim.b.slime_cell_delimiter = "#%%"

      -- slime, neovvim terminal
      vim.g.slime_target = "neovim"
      vim.g.slime_python_ipython = 1

      -- -- slime, tmux
      -- vim.g.slime_target = 'tmux'
      -- vim.g.slime_bracketed_paste = 1
      -- vim.g.slime_default_config = { socket_name = "default", target_pane = ".2" }

      local function toggle_slime_tmux_nvim()
        if vim.g.slime_target == 'tmux' then
          pcall(function()
            vim.b.slime_config = nil
            vim.g.slime_default_config = nil
          end
          )
          -- slime, neovvim terminal
          vim.g.slime_target = "neovim"
          vim.g.slime_bracketed_paste = 0
          vim.g.slime_python_ipython = 1
        elseif vim.g.slime_target == 'neovim' then
          pcall(function()
            vim.b.slime_config = nil
            vim.g.slime_default_config = nil
          end
          )
          -- -- slime, tmux
          vim.g.slime_target = 'tmux'
          vim.g.slime_bracketed_paste = 1
          vim.g.slime_default_config = { socket_name = "default", target_pane = ".2" }
        end
      end
    end,
    keys = {
      {
       '<leader>Zm', 'mark_terminal', desc = 'mark terminal'
      },
      {
       '<leader>Zs', 'set_terminal', desc = 'set terminal'
      },
      {
       '<leader>Zc', ':SlimeConfig<cr>', desc = 'slime config'
      },
      {
       '<leader>Zn', ':split term://$SHELL<cr>', desc = 'new terminal'
      },
      {
       '<leader>Zp', ':split term://python<cr>', desc = 'new python terminal'
      },
      {
       '<leader>Zr', ':split term://R<cr>', desc = 'new R terminal'
      },
      {
       '<leader>Zi', ':split term://ipython<cr>', desc = 'new ipython terminal'
      },
      {
       '<leader>Zj', ':split term://julia<cr>', desc = 'new julia terminal'
      },
    }
  }
}
