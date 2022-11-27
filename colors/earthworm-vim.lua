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
local suitlightblue = '#3b94c8' 
local suitdarkblue = '#0A0D1C'
local galaxypurple = '#9103ff' 
local xray = '#000154' 
local darkpurp = '#09050d'
local worm = '#d9b19a' 
local mediumworm = '#cb835a'
local darkworm = '#c0673b'
local gunred = '#a40000'
local chickenyellow = '#d0ad0d'
local shockyellow = '#fadf00'
local spacelavender = '#be77ff'
local cowwhite = '#fefefe' 
local green = '#1a4c00'
local snotgreen = '#a5a50d'
local boogergreen = '#7ace29'
local phlegm = '#818165'
local suitwhite = '#ffffff'

local Color0 = cowwhite --comments
local Color1 = mediumworm --icon colors
local Color2 = suitwhite --error stuff
local Color3 = shockyellow --local public
local Color4 = worm --strings
local Color5 = suitwhite --Operator
local Color6 = cowwhite --function - highlight - link
local Color7 = suitwhite --parens not funcitonin
local Color8 = worm  --args
local Color9 = '#0A0D1C' --background
local Color10 = snotgreen
local Color11 = '#0a0a1a' --cursorline / columns
local Color12 = boogergreen --gutter number line
local Color13 = '#c43f91' --tabline
local Color14 = '#000000' --TabLine
local Color15 = phlegm --indent char
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
highlight('Identifier', nil, Color8, 'italic')
highlight('Comment', nil, nil, 'italic')
highlight('WildMenu', darkpurp, Color10, nil)
highlight('Pmenu', darkpurp, Color10, nil)
highlight('PmenuSel', spacelavender, darkpurp, nil)
highlight('PmenuThumb', darkpurp, Color10, nil)
highlight('Normal', Color9, suitlightblue, 'bold')
highlight('Visual', galaxypurple, xray, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', suitwhite, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, italic)
highlight('TabLine', Color9, Color13, nil)
highlight('TabLineSel', Color14, Color9, nil)
highlight('TabLineFill', suitwhite, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)
highlight('IndentBlanklineChar',nil, Color15, nil)
highlight('Cursor', gunred, nil , 'italic')

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
