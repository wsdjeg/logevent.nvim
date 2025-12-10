# logevent.nvim

logevent.nvim is a simple neovim plugin to log neovim autocmds.

[![GitHub License](https://img.shields.io/github/license/wsdjeg/logevent.nvim)](LICENSE)
[![GitHub Issues or Pull Requests](https://img.shields.io/github/issues/wsdjeg/logevent.nvim)](https://github.com/wsdjeg/logevent.nvim/issues)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/wsdjeg/logevent.nvim)](https://github.com/wsdjeg/logevent.nvim/commits/master/)
[![GitHub Release](https://img.shields.io/github/v/release/wsdjeg/logevent.nvim)](https://github.com/wsdjeg/logevent.nvim/releases)
[![luarocks](https://img.shields.io/luarocks/v/wsdjeg/logevent.nvim)](https://luarocks.org/modules/wsdjeg/logevent.nvim)

<!-- vim-markdown-toc GFM -->

- [Installation](#installation)
- [Basic usage](#basic-usage)

<!-- vim-markdown-toc -->

## Installation

Using [nvim-plug](https://github.com/wsdjeg/nvim-plug)

```lua
require("plug").add({
	{ "wsdjeg/logevent.nvim", depends = {
		{ "wsdjeg/logger.nvim" },
	} },
})
```

Then use `:Plug install logevent.nvim` to install this plugin.

Using [luarocks](https://luarocks.org/)

```
luarocks install logevent.nvim
```

## Basic usage

1. use `:LogEvent` to start logevent.
2. do something.
3. use `:LogEnent stop` to stop logevent 
4. checkout the event logs in logger buffer.
