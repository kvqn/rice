-- This script allows you to repeat a just recorded macro with the . key
-- Extremely useful and very niche cases.

vim.api.nvim_command( [[

fun! QRepeat(_)
    call feedkeys('@'.s:qreg)
endfun

fun! QSetRepeat(_)
    set opfunc=QRepeat
endfun

fun! QStop()
    set opfunc=QSetRepeat
    return 'g@l'
endfun

nno <expr> <plug>qstop QStop()
ino <expr> <plug>qstop "\<c-o>".QStop()

let s:qrec = 0
fun! QStart()
    if s:qrec == 1
        let s:qrec = 0
        return "q\<plug>qstop"
    endif
    let s:qreg = nr2char(getchar())
    if s:qreg =~# '[0-9a-zA-Z"]'
        let s:qrec = 1
    endif
    return 'q'.s:qreg
endfun

nmap <expr> q QStart()

]])
