
local luasnip = require "luasnip"

return {

    luasnip.snippt(
        { trig = "selenium-imports" },
        { t({
            "from selenium import webdriver",
            "from selenium.webdriver.common.by import By",
            "from selenium.webdriver.support.wait import WebDriverWait",
            "from selenium.webdriver.support import expected_conditions as EC",
        }) }
    )

}

