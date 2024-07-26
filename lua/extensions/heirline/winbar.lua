
local conditions = require("heirline.conditions")
local utils = require("heirline.utils")

local FileType = require("extensions.heirline.filetype")
local Space = { provider = " " }

return {
    fallthrough = false,
    {   -- A special winbar for terminals
        condition = function()
            return conditions.buffer_matches({ buftype = { "terminal" } })
        end,
        utils.surround({ "", "" }, "dark_red", {
            FileType,
            Space,
        }),
    },
    {   -- An inactive winbar for regular files
        condition = function()
            return not conditions.is_active()
        end,
        utils.surround({ "", "" }, "bright_bg", { hl = { fg = "gray", force = true }, FileType }),
    },
    -- A winbar for regular files
    utils.surround({ "", "" }, "bright_bg", FileType),
}

