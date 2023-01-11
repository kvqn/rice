
local luasnip = require "luasnip"
local t = luasnip.text_node

return {

    luasnip.snippet(
        "selenium-imports",
        { t({
            "from selenium import webdriver",
            "from selenium.webdriver.common.by import By",
            "from selenium.webdriver.support.wait import WebDriverWait",
            "from selenium.webdriver.support import expected_conditions as EC",
        }) }
    )

    -- , luasnip.snippet(

    --     { trig = "logging-format" },
    --     { t({
    --         "if args.verbose:",
    --             "logging.basicConfig(level=logging.DEBUG, force=True)",
    --         "else:",
    --             "logging.basicConfig(level=logging.INFO, force=True)",
    --         "logging.basicConfig(format='[ %(asctime)s - %(levelname)s - %(name)s ] %(message)s', force=True)",
    --     }) }
    -- )

}

