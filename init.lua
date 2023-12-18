-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("text-to-colorscheme").setup({
  ai = {
    openai_api_key = os.getenv("OPENAI_API_KEY"),
    gpt_model = "gpt-3.5-turbo-16k",
  },
})
