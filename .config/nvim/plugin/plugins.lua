
-- git clone --depth=1 https://github.com/savq/paq-nvim.git \
--     "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
require("paq") {
    "savq/paq-nvim",

    "nvim-treesitter/nvim-treesitter", 

    "ellisonleao/gruvbox.nvim", -- gruvbox theme
    "nvim-lua/plenary.nvim", -- commonly used functions
}

