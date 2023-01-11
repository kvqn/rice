-- # selenium imports
-- snippet selenium-imports "selenium webdriver imports"
-- 	from selenium import webdriver
-- 	from selenium.webdriver.common.by import By
-- 	from selenium.webdriver.support.wait import WebDriverWait
-- 	from selenium.webdriver.support import expected_conditions as EC
--
return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  require("luasnip").snippet(
    { trig = "hi" },
    { t("Hello, world!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  require("luasnip").snippet(
    { trig = "foo" },
    { t("Another snippet.") }
  ),
}
