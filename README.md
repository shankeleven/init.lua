### this is a fork from the famous rc - ThePrimeagen's init.lua

## This is modified for my personal use but feel free to use it , it has following modifications
- clipboard and yank in sync(solved the buffer sync during explorer)

![Screenshot from 2025-02-11 05-21-16](https://github.com/user-attachments/assets/6580a746-98f4-4813-8fe2-7f421c755c3c)



- ctrl C , ctlr X ,ctrl V , ctrl A work as usual in insert mode(copy, cut , paste , select all respectively)
- alt + arrow keys to move lines up and down (to recreate VS code vibes)
- different cursors for Normal , Insert and Relpace modes
- removed the extras like caleb , cockpit and streamer from the original one
- treesitter parses files upto 1mb large
- works well with go and cpp , just run
            ``````:TSInstall go cpp``````
- supports copilot auto completion(solved problem of psuedo lsp attachement conflict to the buffer)



- improved fuzzyfinder with preview parsing

![Screenshot from 2025-02-09 02-00-48](https://github.com/user-attachments/assets/93c5ee56-4bef-4803-82d2-9f5bd76b8546)





Link to harpoon-2(side branch) as Harpoon(master branch) has some functions that misbehave , I'd upload the corrected version someday.
