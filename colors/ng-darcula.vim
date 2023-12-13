set background=dark
let g:colors_name="ng-darcula"

lua package.loaded['lush_theme.ng-darcular'] = nil

lua require('lush')(require('lush_theme.ng-darcular'))
