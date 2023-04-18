vim.g.pipemysql_option = '-vvv'
vim.g.pipemysql_login_info = {
    {
        description = 'company',
        mysql_hostname = 'localhost',
        mysql_username = 'kevqn',
        mysql_database = 'company',
        mysql_password = 'high',
    },
    {
        description = 'bloodbank',
        mysql_hostname = 'localhost',
        mysql_username = 'kevqn',
        mysql_password = 'high',
        mysql_database = 'bloodbank'
    },
    {
        description = 'video streaming platform',
        mysql_hostname = 'localhost',
        mysql_username = 'kevqn',
        mysql_password = 'high',
        mysql_database = 'video'
    }
}

vim.cmd([[
unmap __
unmap _\|
]])
