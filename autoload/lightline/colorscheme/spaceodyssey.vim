let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:space0 = ["#1c2023", "NONE"]
let s:space1 = ["#1c2023", 0]
let s:space2 = ["#1c2023", "NONE"]
let s:space3 = ["#1c2023", 8]
let s:space4 = ["#e1e1e1", "NONE"]
let s:space5 = ["#e1e1e1", 7]
let s:space6 = ["#BF616A", 15]
let s:space7 = ["#EBCB8B", 14]
let s:space8 = ["#96b5b4", 6]
let s:space9 = ["#81A1C1", 4]
let s:space10 = ["#5E81AC", 12]
let s:space11 = ["#BF616A", 1]
let s:space12 = ["#D08770", 11]
let s:space13 = ["#EBCB8B", 3]
let s:space14 = ["#A3BE8C", 2]
let s:space15 = ["#B48EAD", 5]

let s:p.normal.left = [ [ s:space1, s:space8 ], [ s:space5, s:space1 ] ]
let s:p.normal.middle = [ [ s:space5, s:space3 ] ]
let s:p.normal.right = [ [ s:space5, s:space1 ], [ s:space5, s:space1 ] ]
let s:p.normal.warning = [ [ s:space1, s:space13 ] ]
let s:p.normal.error = [ [ s:space1, s:space11 ] ]

let s:p.inactive.left =  [ [ s:space1, s:space8 ], [ s:space5, s:space1 ] ]
let s:p.inactive.middle = [ [ s:space5, s:space1 ] ]
let s:p.inactive.right = [ [ s:space5, s:space1 ], [ s:space5, s:space1 ] ]

let s:p.insert.left = [ [ s:space1, s:space6 ], [ s:space5, s:space1 ] ]
let s:p.replace.left = [ [ s:space1, s:space13 ], [ s:space5, s:space1 ] ]
let s:p.visual.left = [ [ s:space1, s:space7 ], [ s:space5, s:space1 ] ]

let s:p.tabline.left = [ [ s:space5, s:space3 ] ]
let s:p.tabline.middle = [ [ s:space5, s:space3 ] ]
let s:p.tabline.right = [ [ s:space5, s:space3 ] ]
let s:p.tabline.tabsel = [ [ s:space1, s:space8 ] ]

let g:lightline#colorscheme#space#palette = lightline#colorscheme#flatten(s:p)
