vim.cmd([[
let g:pipemysql_option = '-vvv'
" let g:pipemysql_pager = 'grcat ~/.config/grc/.grcat'

let g:pipemysql_login_info = [
 \ {
 \    'description' : 'company',
 \    'mysql_hostname' : 'localhost',
 \    'mysql_username' : 'kevqn',
 \    'mysql_database' : 'company'
 \ },
\ ]

unmap __
unmap _\|

]])
