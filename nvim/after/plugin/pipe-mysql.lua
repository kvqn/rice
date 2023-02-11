vim.g.pipemysql_option = '-vvv'
vim.g.pipemysql_login_info = {
    {
        description = 'company',
        mysql_hostname = 'localhost',
        mysql_username = 'kevqn',
        mysql_database = 'company'
    },
    {
        description = 'bloodbank',
        mysql_hostname = 'localhost',
        mysql_username = 'kevqn',
        mysql_database = 'bloodbank'
    }
}

vim.cmd([[
unmap __
unmap _\|
]])
