vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end



-- core colors
local lightblue = '#3b94c8' 
local mediumblue = '#373f7f'
local navy = '#000167'
local purple = '#9103ff' 
local ultraviolet = '#000154' 
local darkpurp = '#09050d'
local worm = '#cc9779' 
local mediumworm = '#cb835a'
local darkworm = '#c0673b'
local brownorange = '#b24600'
local lightgray = '#474747' 
local darkred = '#a40000'
local brightred = '#b11f1f'
local mediumyellow = '#d0ad0d'
local brightyellow = '#fadf00'
local lavender = '#be77ff'
local whitegray = '#fefefe' 
local green = '#1a4c00'
local snotgreen = '#a5a50d'
local boogergreen = '#7ace29'
local suitwhite = '#ffffff'

local Color0 = whitegray --comments
local Color1 = mediumworm --icon colors
local Color2 = suitwhite --error stuff
local Color3 = boogergreen --local public
local Color4 = worm --strings
local Color5 = '#ebe100' --Operator
local Color6 = darkworm --function - highlight - link
local Color7 = suitwhite --parens not funcitonin
local Color8 = brightred --args
local Color9 = darkpurp --background
local Color10 = '#9593be'
local Color11 = '#1d111b' --cursorline / columns
local Color12 = snotgreen --gutter number line
local Color13 = '#c43f91' --tabline
local Color14 = '#000000' --TabLine
local Color15 = lightgray --indent char
--something

highlight('Comment', nil, Color0, 'italic')
highlight('Constant', nil, Color1, nil)
highlight('Error', nil, Color2, nil)
highlight('Type', nil, Color3, nil)
highlight('String', nil, Color4, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Conditional', nil, Color3, nil)
highlight('Repeat', nil, Color3, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color6, nil)
highlight('Function', nil, Color6, nil)
highlight('Type', nil, Color6, nil)
highlight('parens', nil, Color7, nil)
highlight('Identifier', nil, Color8, nil)
highlight('Comment', nil, nil, 'italic')
highlight('StatusLine', Color10, Color9, nil)
highlight('WildMenu', Color9, Color10, nil)
highlight('Pmenu', Color9, Color10, nil)
highlight('PmenuSel', Color10, Color9, nil)
highlight('PmenuThumb', Color9, Color10, nil)
highlight('Normal', Color9, '#303c89', bold)
highlight('Visual', purple, ultraviolet, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', nil, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, italic)
highlight('TabLine', Color9, Color13, nil)
highlight('TabLineSel', Color14, Color9, nil)
highlight('TabLineFill', Color9, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)
highlight('IndentBlanklineChar',nil, Color15, nil)

link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSPunctBracket', 'MyTag')
link('TSTag', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSRepeat', 'Repeat')
link('TSNumber', 'Number')
link('TSType', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Whitespace', 'Comment')
link('Operator', 'Keyword')
link('TSConstant', 'Constant')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TSComment', 'Comment')
link('TSString', 'String')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSFuncMacro', 'Macro')
link('TSKeyword', 'Keyword')
link('TSConditional', 'Conditional')
link('CursorLineNr', 'Identifier')
link('Macro', 'Function')
link('TSField', 'Constant')
link('TSOperator', 'Operator')
link('TSLabel', 'Type')
link('TSParameter', 'Constant')
link('TSProperty', 'TSField')
link('TSFunction', 'Function')
link('TSNamespace', 'TSType')
