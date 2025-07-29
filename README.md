### this is a fork from the famous rc - ThePrimeagen's init.lua

## This is modified for my personal use but feel free to use it , it has following modifications
- clipboard and yank in sync(solved the buffer sync during explorer)

![alt text](<Screenshot from 2025-02-11 05-21-16.png>)

- ctrl C , ctlr X ,ctrl V , ctrl A work as usual in insert mode(copy, cut , paste , select all respectively)
- alt + arrow keys to move lines up and down (to recreate VS code vibes)
- markdown preview [`:MarkdownPreview`]
- added support for ClaudeCode [`:ClaudeCode`] (Prerequisite : `bun install -g @anthropic-ai/claude-code@1.0.27`)

![image](https://github.com/user-attachments/assets/882efa83-b759-47a4-a473-71d37759dd8d)


- different cursors for Normal , Insert and Relpace modes
- removed the extras like caleb , cockpit and streamer from the original one
- removed the extras like caleb , cockpit and streamer from the original one
- treesitter parses files upto 1mb large
- works well with go and cpp , just run
            ``````:TSInstall go cpp``````
- comments out the line with ctrl + / in normal and visual mode
- supports copilot auto completion(solved problem of psuedo lsp attachement conflict to the buffer)
- horizontal scroll with ctrl+l(right) and ctrl+h(left) in normal mode
- :e for nested files creation


- improved fuzzyfinder with preview parsing

![alt text](<Screenshot from 2025-02-09 02-00-48.png>)




- Harpoon file addition and removal made more intuitive , using ctrl with Q W E R T Y to add at 1,2,3,4,5 respectively

![image](https://github.com/user-attachments/assets/c0069969-7fda-4c87-a307-0499771e7ce2)




Link to harpoon-2(side branch) as Harpoon(master branch) has some functions that misbehave , I'd upload the corrected version someday.

### Useful commands:
- `:TSInstall` <language> - to install treesitter parsers
- `:TSUpdate` - to update treesitter parsers
- `:TSUninstall <language>` - to uninstall treesitter parsers
- `:Mason` - to install packages
- `:Lazy sync` - to install plugins
- `:Lazy update` - to update plugins




