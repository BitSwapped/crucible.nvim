# Crucible.nvim

A premium dark colorscheme for Neovim, meticulously crafted for developers who demand clarity and visual comfort during extended coding sessions. With its carefully balanced contrast and thoughtfully chosen palette, Crucible reduces eye strain while highlighting code structure with precision.

## Features

- **Multiple Flavors**: `forge` (default), `cast`, `quench` - each with distinct character
- **Configurable Styles**: Customize bold, italic, and other text styles
- **Terminal Colors**: Full terminal color palette support
- **Semantic Highlighting**: Rich support for treesitter and LSP semantic tokens
- **Plugin Support**: Comprehensive highlighting for popular Neovim plugins

## Installation

### Using lazy.nvim

```lua
{
  "BitSwapped/crucible.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    flavor = "forge", -- "forge", "cast", or "quench"
    styles = {
      comments = { italic = true },
      keywords = { bold = true },
      functions = {},
      types = { bold = true },
    },
  },
}
```

## Configuration Options

| Option   | Type    | Default            | Description                          |
|----------|---------|--------------------|--------------------------------------|
| `flavor` | string  | `"forge"`          | Color variant: `"forge"`, `"cast"`, `"quench"` |
| `styles` | table   | (see below)        | Text style configurations            |

### Default Styles

```lua
styles = {
  comments = { italic = true },
  keywords = { bold = true },
  functions = {},
  types = { bold = true },
}
```

## License

[GNU GPLv3](./LICENSE)
