local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "kudep.lsp.configs"
require("kudep.lsp.handlers").setup()
require "kudep.lsp.null-ls"
