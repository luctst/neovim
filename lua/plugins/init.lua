return {
	{ "williamboman/mason.nvim" },
	{
    "neovim/nvim-lspconfig",
    dependencies = {
      { "davidosomething/format-ts-errors.nvim" },
    }
  },
  { "WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-nvim-lua",                     ft = { "lua" } },
  { "hrsh7th/cmp-nvim-lsp" },
	{ "lukas-reineke/lsp-format.nvim" },
}
