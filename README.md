 <div align="center">
 <h1>EARTHWORM VIM</h1>
 <img src='./assets/ewv2.gif'>
 </div>
 <hr/>

### What is this?

A Neovim theme based on EARTHWORM JIM the video game.

### Color Palette - use this if you want to match your terminal defaults
<div align="center">
 <img src='./assets/ewj-palette.png'>
 </div>

### Notes
It should mostly work with common plugins treesitter, nerdtree, Conquer of Completion. <br/>
I included the bg art for aesthetics.

### Possible Future Plans 
Might add an official Airline | Powerline theme. <br/>
Light Mode for you sickos.

### Installation
Just add .config/nvim/colors/ directory to your config, place earthworm-vim.lua file in there.

```mermaid
stateDiagram
[*] --> .config/
.config/ --> nvim/
nvim/ --> colors/
colors/ --> earthworm_vim.lua;
```
After including earthworm-vim.lua in your config setup, you can add the following to you init file.
`colo earthworm-vim`<br/>
Alternatively you can just call it from your workspace.
`:colorscheme earthworm-vim`
