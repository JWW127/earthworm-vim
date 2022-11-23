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

local Color0 = '#516310'
local Color1 = '#ffffff'
local Color2 = '#9c1f02'
local Color3 = '#1c55b0'
local Color4 = '#efefff'
local Color5 = '#c43f91'
local Color6 = '#bf0b00'
local Color7 = '#000969'
local Color8 = '#f2b280'
local Color9 = '#060a1c' --background
local Color10 = '#ffea00'
local Color11 = '#1d334b'
local Color12 = '#f2b280' --gutter number line
local Color13 = '#c43f91' --tabline
local Color14 = '#000000' --TabLine
local Color15 = '#321915' --indent char
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
highlight('Normal', Color9, Color10, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, nil)
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


