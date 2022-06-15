require"nvim-treesitter.configs".setup {
    ensure_installed = "all",
      -- ensure_installed = {
      --     "bash", "cmake", "dockerfile", "go", "hcl", "html", "java", "c_sharp", "css", "dart",
      --     "javascript", "json", "latex", "ledger", "lua", "python", "toml",
      --     "yaml", "markdown", "kotlin", "comment", "php", "phpdoc",
      --     "python", "ruby", "rust", "typescript", "vue", "yaml",
      -- }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
      ignore_install = {}, -- List of parsers to ignore installing
      highlight = {
          enable = true, -- false will disable the whole extension
          disable = {} -- list of language that will be disabled
      },
      rainbow = {
          -- Setting colors
          colors = {
            -- Colors here
          },
          -- Term colors
          termcolors = {
            -- Term colors here
          }
        },
        rainbow = {
          enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        },
        autotag = {
          enable = true,
        },indent = {
          enable = true,
        },
        rainbow = {
          enable = true
        }
  }