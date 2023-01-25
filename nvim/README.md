

# Index

- [ Structure ](#structure)
- [ Keybinds ](#keybinds)
- [ Commands ](#commands)

# Structure

```
.
├── init.lua # Entry point
├── after
│   └── plugin # All scripts here will be executed after the lua/plugins.lua script
├── lua
│   ├── commands 
│   │       # This dir contains my custom commands
│   ├── magic 
│   │       # This dir contains scripts that I got from reddit / stack overflow.
│   ├── util
│   │       # This dir contains some utility functions used in other scripts
│   ├── options.lua # Vim options
│   └── plugins.lua # Plugins
```


# Keybinds

### How to read keybinds

`<leader>` key is the spacebar key. \
`<M-key>` is the `Alt` key. Thus, `<M-1>` means `Alt+1` and so on.

| Associated Plugin | Key Strokes | Description |
| ----------------- | ----------- | ----------- |
| harpoon | `<leader>hv` | Open the quick access menu |
| harpoon | `<leader>ha` | Add Mark |
| harpoon | `<M-1>` | Switch to mark 1 |
| harpoon | `<M-2>` | Switch to mark 2 |
| harpoon | `<M-3>` | Switch to mark 3 |
| harpoon | `<M-4>` | Switch to mark 4 |
| harpoon | `<M-5>` | Switch to mark 5 | 
| telescope | `<leader>pf` | Find a file in the project |
| telescope | `<leader>pg` | ( live_grep ) find files that contain a pattern |

# Commands

List of commands that either I have set or I often forget and would like to document.

| Associated Plugin | Command | Description |
| ----------------- | ------- | ----------- |
| custom | `SortImports` | Sort the imports at the top of the buffer in alphabetical order. |
| iamcco / markdown-preview.nvim | `MarkdownPreview` | Opens a live preview of the markdown in your default browser. | 



