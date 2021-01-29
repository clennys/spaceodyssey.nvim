local spaceodyssey = {

    fg = '#Eceff4';
    bg = '#1c2023';

    c1 = '#1c2023';
    c2 = '#2D3439';
    c3 = '#4e5961';
    c4 = '#D8DEE9';
    c5 = '#E5E9F0';
    c6 = '#ECEFF4';
    c7 = '#96b4b5';
    c8 = '#88C0D0';
    c9 = '#81A1C1';
    c10 = '#5E81AC';
    c11 = '#BF616A';
    c12 = '#D08770';
    c13 = '#EBCB8B';
    c14 = '#A3BE8C';
    c15 = '#B48EAD';
    c16 = '#919ba0';
    c17 = '#15191b';
    c18 = '#778899';
    c19 = '#697884';
    c20 = '#242a2e'
}

function spaceodyssey.highlighting(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('hi ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg..' '..sp)   
end


function spaceodyssey.config()
    local syntax = {
        -- Editor
        ColorColumn = {bg=spaceodyssey.c1};
        Cursor = {fg=spaceodyssey.c1, bg=spaceodyssey.c4};
        CursorLine = {bg=spaceodyssey.c1};
        Error = {fg=spaceodyssey.c4, bg=spaceodyssey.c11};
        LineNr = {fg=spaceodyssey.c3};
        MatchParen = {fg=spaceodyssey.c8, bg=spaceodyssey.c3};
        NonText = {fg=spaceodyssey.c2};
        Normal = {fg=spaceodyssey.c4, bg=spaceodyssey.c1};
        Pmenu = {fg=spaceodyssey.c19, bg=spaceodyssey.c20};
        PmenuSbar = {fg=spaceodyssey.c6, bg=spaceodyssey.c2};
        PmenuSel = {fg=spaceodyssey.c6, bg=spaceodyssey.c2};
        PmenuThumb = {fg=spaceodyssey.c6, bg=spaceodyssey.c19};
        SpecialKey = {fg=spaceodyssey.c3};
        SpellBad = {fg=spaceodyssey.c11, bg=spaceodyssey.c1, style='underline'};
        SpellCap = {fg=spaceodyssey.c13, bg=spaceodyssey.c8, style='underline'};
        SpellLocal = {fg=spaceodyssey.c5, bg=spaceodyssey.c1, style='underline'};
        SpellRare = {fg=spaceodyssey.c6, bg=spaceodyssey.c1, style='underline'};
        Visual = {bg=spaceodyssey.c2};
        VisualNOS = {bg=spaceodyssey.c2};
        QuickFixLine = {fg=spaceodyssey.bg, bg=spaceodyssey.c13};
        Terminal = {fg=spaceodyssey.c6, bg=spaceodyssey.bg};

        -- Neovim checkhealth
        healthError = {spaceodyssey.c11, bg=spaceodyssey.c1};
        healthSuccess = {spaceodyssey.c14, bg=spaceodyssey.c1};
        healthWarning = {spaceodyssey.c13, bg=spaceodyssey.c1};

        -- Gutter
        CursorColumn = {bg=spaceodyssey.c1};
        CursorLineNr = {fg=spaceodyssey.c7};
        Folded = {fg=spaceodyssey.c3, bg=spaceodyssey.c1};
        FoldColumn = {fg=spaceodyssey.c3, bg=spaceodyssey.c1};
        SignColumn = {fg=spaceodyssey.c1, bg=spaceodyssey.c1};

        -- Navigation
        Directory = {fg=spaceodyssey.c15};

        -- Prompt/Status
        EndOfBuffer = {fg=spaceodyssey.c1};
        ErrorMsg = {fg=spaceodyssey.c4; bg=spaceodyssey.c11};
        ModeMsg = {fg=spaceodyssey.c4};
        MoreMsg = {fg=spaceodyssey.c8};
        Question = {fg=spaceodyssey.c4};
        StatusLine = {fg=spaceodyssey.c6, bg=spaceodyssey.c1};
        StatusLineNC = {fg=spaceodyssey.c4, bg=spaceodyssey.c1};
        StatusLineTerm = {fg=spaceodyssey.c8, bg=spaceodyssey.c1};
        StatusLineTermNC = {fg=spaceodyssey.c4, bg=spaceodyssey.c1};
        WarningMsg = {fg=spaceodyssey.c1, bg=spaceodyssey.c13};
        WildMenu = {fg=spaceodyssey.c8, bg=spaceodyssey.c1};

        -- Search (using high contrast search)
        IncSearch = {fg=spaceodyssey.c1, bg=spaceodyssey.c13, style='underline'};
        Search = {fg=spaceodyssey.c1, bg=spaceodyssey.c13};

        -- Tabs
        TabLine = {fg=spaceodyssey.c4, bg=spaceodyssey.c1};
        TabLineFill = {fg=spaceodyssey.c4, bg=spaceodyssey.c1};
        TabLineSel = {fg=spaceodyssey.c8, bg=spaceodyssey.c3};

        -- Window
        Title = {fg=spaceodyssey.c4};
        VertSplit = {fg=spaceodyssey.c2, bg=spaceodyssey.c1};

        -- Language Base Groups
        Boolean = {fg=spaceodyssey.c9};
        Character = {fg=spaceodyssey.c14};
        Conditional = {fg=spaceodyssey.c9};
        Constant = {fg=spaceodyssey.c8};
        Define = {fg=spaceodyssey.c9};
        Delimeter = {fg=spaceodyssey.c6};
        Exception = {fg=spaceodyssey.c9};
        Float = {fg=spaceodyssey.c15};
        Function = {fg=spaceodyssey.c8};
        Identifier = {fg=spaceodyssey.c4};
        Include = {fg=spaceodyssey.c9};
        Keyword = {fg=spaceodyssey.c9};
        Label = {fg=spaceodyssey.c9};
        Number = {fg=spaceodyssey.c15};
        Operator = {fg=spaceodyssey.c11};
        PreProc = {fg=spaceodyssey.c9};
        Repeat = {fg=spaceodyssey.c9};
        Special = {fg=spaceodyssey.c10};
        SpecialChar = {fg=spaceodyssey.c13};
        Comment = {fg=spaceodyssey.c19, style='italic'};
        SpecialComment = {fg=spaceodyssey.c8, style='italic'};
        Statement = {fg=spaceodyssey.c15};
        StorageClass = {fg=spaceodyssey.c9};
        String = {fg=spaceodyssey.c14};
        Structure = {fg=spaceodyssey.c13};
        Tag = {fg=spaceodyssey.c4};
        Todo = {fg=spaceodyssey.c13};
        Type = {fg=spaceodyssey.c9};
        Typedef = {fg=spaceodyssey.c9};
        Macro = {fg=spaceodyssey.c9};
        PreCondit = {fg=spaceodyssey.c9};

        -- Git
        DiffAdd = {fg=spaceodyssey.c14};
        DiffChange = {fg=spaceodyssey.c13};
        DiffDelete = {fg=spaceodyssey.c11};
        DiffText = {fg=spaceodyssey.c9, bg=spaceodyssey.c1};
        diffAdded = {fg=spaceodyssey.c14, bg=spaceodyssey.c1};
        diffChanged = {fg=spaceodyssey.c13};
        diffRemoved = {fg=spaceodyssey.c11};
        diffFileId = {fg=spaceodyssey.c10, style='reverse'};
        diffFile = {fg=spaceodyssey.c18};
        diffNewFile = {fg=spaceodyssey.c14};
        diffOldFile = {fg=spaceodyssey.c11};
        gitconfigVariable = {fg=spaceodyssey.c7};
        debugPc = {fg=spaceodyssey.c7};
        debugBreakpoint = {fg=spaceodyssey.c11, style='reverse'};

        -- Start Treesitter --
        -- Misc
        TSError = {fg=spaceodyssey.c11, style='underline'};
        TSPunctDelimiter = {fg=spaceodyssey.c9};
        TSPunctBracket = {fg=spaceodyssey.c6};
        TSPunctSpecial = {fg=spaceodyssey.c6};
        -- Constants
        TSConstant = {fg=spaceodyssey.c8};
        TSConstBuiltin = {fg=spaceodyssey.c9};
        TSConstMacro = {fg=spaceodyssey.c7};
        TSStringRegex = {fg=spaceodyssey.c14};
        TSString = {fg=spaceodyssey.c14};
        TSStringEscape = {fg=spaceodyssey.c8};
        TSCharacter = {fg=spaceodyssey.c14};
        TSNumber = {fg=spaceodyssey.c15};
        TSBoolean = {fg=spaceodyssey.c9};
        TSFloat = {fg=spaceodyssey.c15};
        TSAnnotation = {fg=spaceodyssey.c12};
        TSAttribute = {fg=spaceodyssey.c7};
        TSNamespace = {fg=spaceodyssey.c15};
        -- Functions
        TSFuncBuiltin = {fg=spaceodyssey.c11};
        TSFunction = {fg=spaceodyssey.c13};
        TSFuncMacro = {fg=spaceodyssey.c8};
        TSParameter = {fg=spaceodyssey.c5};
        TSParameterReference = {fg=spaceodyssey.c9};
        TSMethod = {fg=spaceodyssey.c8};
        TSField = {fg=spaceodyssey.c5};
        TSProperty = {fg=spaceodyssey.c9};
        TSConstructor = {fg=spaceodyssey.c14};
        -- Keywords
        TSConditional = {fg=spaceodyssey.c9};
        TSRepeat = {fg=spaceodyssey.c15};
        TSLabel = {fg=spaceodyssey.c8};
        TSKeyword = {fg=spaceodyssey.c9};
        TSKeywordFunction = {fg=spaceodyssey.c9};
        TSKeywordOperator = {fg=spaceodyssey.c11};
        TSOperator = {fg=spaceodyssey.c11};
        TSException = {fg=spaceodyssey.c9};
        TSType = {fg=spaceodyssey.c12};
        TSTypeBuiltin = {fg=spaceodyssey.c11};
        TSStructure = {fg=spaceodyssey.c13};
        TSInclude = {fg=spaceodyssey.c9};
        -- Variable
        TSVariable = {fg=spaceodyssey.c5};
        TSVariableBuiltin = {fg=spaceodyssey.c9};
        -- Text
        TSText = {fg=spaceodyssey.c13};
        TSStrong = {fg=spaceodyssey.c13};
        TSEmphasis = {fg=spaceodyssey.c13};
        TSUnderline = {fg=spaceodyssey.c13};
        TSTitle = {fg=spaceodyssey.c13};
        TSLiteral = {fg=spaceodyssey.c13};
        TSURI = {fg=spaceodyssey.c13};
        -- Tags
        TSTag = {fg=spaceodyssey.c9};
        TSTagDelimiter = {fg=spaceodyssey.c16};
        -- END Treesitter --

        -- START Languages --
        -- HTML (keep consistent with Markdown, below)
        htmlArg = {fg=spaceodyssey.c8};
        htmlBold = {fg=spaceodyssey.c8, style='italic'};
        htmlEndTag = {fg=spaceodyssey.c6};
        htmlH1 = {fg=spaceodyssey.c10};
        htmlH2 = {fg=spaceodyssey.c10};
        htmlH3 = {fg=spaceodyssey.c10};
        htmlH4 = {fg=spaceodyssey.c10};
        htmlH5 = {fg=spaceodyssey.c10};
        htmlH6 = {fg=spaceodyssey.c10};
        htmlItalic = {fg=spaceodyssey.c15, style='italic'};
        htmlLink = {fg=spaceodyssey.c7, style='underline'};
        htmlSpecialChar = {fg=spaceodyssey.c8};
        htmlSpecialTagName = {fg=spaceodyssey.c10};
        htmlTag = {fg=spaceodyssey.c6};
        htmlTagN = {fg=spaceodyssey.c10};
        htmlTagName = {fg=spaceodyssey.c10};
        htmlTitle = {fg=spaceodyssey.c6};

        -- Markdown (keep consistent with HTML, above)
        markdownBlockquote = {fg=spaceodyssey.c16};
        markdownBold = {fg=spaceodyssey.c8, style='italic'};
        markdownCode = {fg=spaceodyssey.c14};
        markdownCodeBlock = {fg=spaceodyssey.c14};
        markdownCodeDelimiter = {fg=spaceodyssey.c14};
        markdownH1 = {fg=spaceodyssey.c10};
        markdownH2 = {fg=spaceodyssey.c10};
        markdownH3 = {fg=spaceodyssey.c10};
        markdownH4 = {fg=spaceodyssey.c10};
        markdownH5 = {fg=spaceodyssey.c10};
        markdownH6 = {fg=spaceodyssey.c10};
        markdownHeadingDelimiter = {fg=spaceodyssey.c11};
        markdownHeadingRule = {fg=spaceodyssey.c16};
        markdownId = {fg=spaceodyssey.c15};
        markdownIdDeclaration = {fg=spaceodyssey.c10};
        markdownIdDelimiter = {fg=spaceodyssey.c15};
        markdownItalic = {fg=spaceodyssey.c15, style='italic'};
        markdownLinkDelimiter = {fg=spaceodyssey.c15};
        markdownLinkText = {fg=spaceodyssey.c10};
        markdownListMarker = {fg=spaceodyssey.c11};
        markdownRule = {fg=spaceodyssey.c16};
        markdownUrl = {fg=spaceodyssey.c7, style='underline'};

        -- Nvim LSP
        LSPDiagnosticsDefaultWarning = {fg=spaceodyssey.c13};
        LspDiagnosticsDefaultError = {fg=spaceodyssey.c11};
        LspDiagnosticsDeaultInformation = {fg=spaceodyssey.c7};
        LspDiagnosticsDefaultHint = {fg=spaceodyssey.c7};

        -- Nvim-tree.nvim
        NvimTreeFolderName = {fg=spaceodyssey.c8, bg=spaceodyssey.c1};
        NvimTreeFolderIcon = {fg=spaceodyssey.c9, bg=spaceodyssey.c1};
        NvimTreeExecFile = {fg=spaceodyssey.c14, bg=spaceodyssey.c1};
        NvimTreeIndentMarker = {fg=spaceodyssey.c14, bg=spaceodyssey.c1};
        NvimTreeGitDirty = {fg=spaceodyssey.c11, bg=spaceodyssey.c1};
        NvimTreeGitStaged = {fg=spaceodyssey.c11, bg=spaceodyssey.c1};
        NvimTreeGitMerge = {fg=spaceodyssey.c11, bg=spaceodyssey.c1};
        NvimTreeGitRenamed = {fg=spaceodyssey.c11, bg=spaceodyssey.c1};
        NvimTreeGitNew = {fg=spaceodyssey.c11, bg=spaceodyssey.c1};
        NvimTreeRootFolder = {fg=spaceodyssey.c14, bg=spaceodyssey.c1};

        --Vim    
        vimCommentTitle = {fg=spaceodyssey.c19,style='bold'};
        vimLet = {fg=spaceodyssey.c10};
        vimVar = {fg=spaceodyssey.c6};
        vimFunction = {fg=spaceodyssey.c11,style='bold'};
        vimIsCommand = {fg=spaceodyssey.fg};
        vimCommand = {fg=spaceodyssey.c8};
        vimNotFunc = {fg=spaceodyssey.c15,style='bold'};
        vimUserFunc = {fg=spaceodyssey.c13,style='bold'};
        vimFuncName= {fg=spaceodyssey.c13,style='bold'};
    }

return syntax

end

function spaceodyssey.terminal()
  vim.g.terminal_color_0 = spaceodyssey.bg
  vim.g.terminal_color_1 = spaceodyssey.c11
  vim.g.terminal_color_2 = spaceodyssey.c14
  vim.g.terminal_color_3 = spaceodyssey.c13
  vim.g.terminal_color_4 = spaceodyssey.c9
  vim.g.terminal_color_5 = spaceodyssey.c15
  vim.g.terminal_color_6 = spaceodyssey.c7
  vim.g.terminal_color_7 = spaceodyssey.c6
  vim.g.terminal_color_8 = spaceodyssey.bg
  vim.g.terminal_color_9 = spaceodyssey.c11
  vim.g.terminal_color_10 = spaceodyssey.c14
  vim.g.terminal_color_11 = spaceodyssey.c13
  vim.g.terminal_color_12 = spaceodyssey.c9
  vim.g.terminal_color_13 = spaceodyssey.c15
  vim.g.terminal_color_14 = spaceodyssey.c7
  vim.g.terminal_color_15 = spaceodyssey.fg
end

function spaceodyssey.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true

  spaceodyssey.terminal()
  local config = spaceodyssey.config()

  for group,colors in pairs(config) do
    spaceodyssey.highlighting(group,colors)
  end
end

spaceodyssey.colorscheme()

return spaceodyssey
