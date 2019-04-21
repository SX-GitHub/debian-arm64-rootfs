" Based on behelit theme
let g:airline#themes#springfield#palette = {}

" Normal mode
let s:N1 = [ '#121212', '#00ff87', 233, 48 ]
let s:N2 = [ '#00ff87', '#262626', 69 , 235 ]
let s:N3 = [ '#00ff87', '#1c1c1c', 69 , 234, 'bold' ]
let g:airline#themes#springfield#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#springfield#palette.normal_modified = {
      \ 'airline_c': [ '#a80030', '#1c1c1c', 161, 234, 'bold' ],
      \ }

" Insert mode
let s:I1 = [ '#121212', '#fb8c00', 233, 178 ]
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#springfield#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#springfield#palette.insert_modified = g:airline#themes#springfield#palette.normal_modified
let g:airline#themes#springfield#palette.insert_paste = {
      \ 'airline_a': [ "#121212", "#5f5faf", 233, 61, '' ],
      \ }

" Replace mode
let g:airline#themes#springfield#palette.replace = copy(g:airline#themes#springfield#palette.insert)
let g:airline#themes#springfield#palette.replace.airline_a = [ s:I1[0], '#d70057', s:I1[2], 161, '' ]
let g:airline#themes#springfield#palette.replace_modified = g:airline#themes#springfield#palette.insert_modified

" Visual mode
let s:V1 = [ '#121212', '#5fff5f', 233, 83 ]
let s:V2 = s:N2
let s:V3 = s:N3
let g:airline#themes#springfield#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#springfield#palette.visual_modified = g:airline#themes#springfield#palette.normal_modified

" Inactive window
let s:IA1 = [ '#4e4e4e', '#1c1c1c', 239, 234, '' ]
let s:IA2 = [ '#4e4e4e', '#262626', 239, 235, '' ]
let s:IA3 = [ '#4e4e4e', '#1c1c1c', 239, 234, 'bold' ]
let g:airline#themes#springfield#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#springfield#palette.inactive_modified = {
      \ 'airline_c': [ '#5f5f87', '#1c1c1c', 60, 234, 'bold' ],
      \ }

" Accents
let g:airline#themes#springfield#palette.accents = {
      \ 'red': [ '#a80030', '', 161, '' ]
      \ }

" Warnings
let s:WI = [ '#121212', '#a80030', 233, 161 ]
let g:airline#themes#springfield#palette.normal.airline_warning = s:WI
let g:airline#themes#springfield#palette.normal_modified.airline_warning = s:WI
let g:airline#themes#springfield#palette.insert.airline_warning = s:WI
let g:airline#themes#springfield#palette.insert_modified.airline_warning = s:WI
let g:airline#themes#springfield#palette.insert_paste.airline_warning = s:WI
let g:airline#themes#springfield#palette.visual.airline_warning = s:WI
let g:airline#themes#springfield#palette.visual_modified.airline_warning = s:WI
let g:airline#themes#springfield#palette.replace.airline_warning = s:WI
let g:airline#themes#springfield#palette.replace_modified.airline_warning = s:WI
