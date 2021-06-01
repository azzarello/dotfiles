local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end

vim.cmd "autocmd bufwritepost plugins.lua packercompile" -- auto compile when there are changes in plugins.lua

return require("packer").startup(
    function(use)
        -- packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- todo refactor all of this (for now it works, but yes i know it could be wrapped in a simpler function)
        use {"neovim/nvim-lspconfig", opt = true}
        use {"glepnir/lspsaga.nvim", opt = true}
        use {"kabouzeid/nvim-lspinstall", opt = true}

        -- telescope
        use {"nvim-lua/popup.nvim", opt = true}
        use {"nvim-lua/plenary.nvim", opt = true}
        use {"nvim-telescope/telescope.nvim", opt = true}
        use {"nvim-telescope/telescope-fzy-native.nvim", opt = true}

        -- debugging
        use {"mfussenegger/nvim-dap", opt = true}

        -- autocomplete
        use {"hrsh7th/nvim-compe", opt = true}
        use {"hrsh7th/vim-vsnip", opt = true}
        use {"rafamadriz/friendly-snippets", opt = true}

        -- treesitter
        use {"nvim-treesitter/nvim-treesitter", run = ":tsupdate"}
        use {"windwp/nvim-ts-autotag", opt = true}

        -- explorer
        use {"kyazdani42/nvim-tree.lua", opt = true}
        -- todo remove when open on dir is supported by nvimtree
        use "kevinhwang91/rnvimr"

        -- use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
        use {"lewis6991/gitsigns.nvim", opt = true}
        -- use {"liuchengxu/vim-which-key", opt = true}
        use {"folke/which-key.nvim", opt = true}
        use {"christianchiarulli/dashboard-nvim", opt = true}
        use {"windwp/nvim-autopairs", opt = true}
        use {"terrortylor/nvim-comment", opt = true}
        use {"kevinhwang91/nvim-bqf", opt = true}

        -- color
        use {"christianchiarulli/nvcode-color-schemes.vim", opt = true}

        -- icons
        use {"kyazdani42/nvim-web-devicons", opt = true}

        -- status line and bufferline
        use {"glepnir/galaxyline.nvim", opt = true}
        use {"romgrk/barbar.nvim", opt = true}

        -- code::stats
        use {"https://gitlab.com/code-stats/code-stats-vim.git"}

        -- floaterm
        use {"voldikss/vim-floaterm", opt = true }

        -- lightbulb
        use {"kosayoda/nvim-lightbulb", opt = true}

        -- vim-tmux-navigator
        use {"christoomey/vim-tmux-navigator", opt = true}

        -- miramare colorscheme
        -- use {"franbach/miramare"}

        -- vim-tex
        use {"lervag/vimtex", opt = true, ft = {'tex', 'bib', 'md'}}


        require_plugin("nvim-lspconfig")
        require_plugin("lspsaga.nvim")
        require_plugin("nvim-lspinstall")
        require_plugin("friendly-snippets")
        require_plugin("popup.nvim")
        require_plugin("plenary.nvim")
        require_plugin("telescope.nvim")
        require_plugin("nvim-dap")
        require_plugin("nvim-compe")
        require_plugin("vim-vsnip")
        require_plugin("nvim-treesitter")
        require_plugin("nvim-ts-autotag")
        require_plugin("nvim-tree.lua")
        require_plugin("gitsigns.nvim")
        require_plugin("which-key.nvim")
        require_plugin("dashboard-nvim")
        require_plugin("nvim-autopairs")
        require_plugin("nvim-comment")
        require_plugin("nvim-bqf")
        require_plugin("nvcode-color-schemes.vim")
        require_plugin("nvim-web-devicons")
        require_plugin("galaxyline.nvim")
        require_plugin("barbar.nvim")
        require_plugin("code-stats-vim")
        -- require_plugin("vim-floaterm")
        -- require_plugin("nvim-lightbulb")
        require_plugin("vim-tmux-navigator")
        -- require_plugin("miramare")
        require_plugin("vimtex")
    end
)
