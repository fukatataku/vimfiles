" Unite setting

nnoremap [unite] <Nop>
nmap <Space>u [unite]
nnoremap [unite]f :<C-u>UniteWithBufferDir<Space>-buffer-name=files file<CR>
nnoremap [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]r :<C-u>Unite<Space>register<CR>
nnoremap [unite]c :<C-u>Unite<Space>bookmark<CR>
nnoremap [unite]t :<C-u>Unite<Space>tab<CR>
nnoremap [unite]w :<C-u>Unite<Space>window<CR>
nnoremap [unite]m :<C-u>Unite<Space>file_mru<CR>
