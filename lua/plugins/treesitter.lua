return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local languages = {
        "vim",
        "lua",
        "cpp",
        "c",
        "c_sharp",
        "python",
        "json",
      }

      require("nvim-treesitter").install(languages)
    end,
  },
}
