syn match cUserOperators display "[-]"
syn match cUserOperators display "[~!%^&*()-+=[\]{},.<>?:;]"
syn match cUserOperators display "/[^*/]"me=e-1
syn match cUserOperators display "/$"
syn match cUserNamespace display "\w\+\s*::"

hi def link cUserOperators cType
hi def link cUserNamespace cSpecial
