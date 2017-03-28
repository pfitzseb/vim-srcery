" -----------------------------------------------------------------------------
" File: srcery.vim
" Description: Srcery colorscheme for Lightline (itchyny/lightline.vim)
" Author: Roosta <mail@roosta>
" Source: https://github.com/morhetz/gruvbox/blob/master/autoload/lightline/colorscheme/gruvbox.vim
" Last Modified: 2017-03-28
" -----------------------------------------------------------------------------

function! s:getSrcColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui") 
  let termColor = synIDattr(hlID(a:group), "fg", "cterm") 
  return [ guiColor, termColor ]
endfunction

if exists('g:lightline')

  let s:black        = s:getSrcColor('SrceryBlack')
  let s:white        = s:getSrcColor('SrceryWhite')
  let s:bright_black = s:getSrcColor('SrceryBrightBlack')
  let s:gray         = s:getSrcColor('SrceryGray')
  let s:gray_alt     = s:getSrcColor('SrceryGrayAlt')
  let s:yellow       = s:getSrcColor('SrceryYellow')
  let s:blue         = s:getSrcColor('SrceryBlue')
  let s:bright_blue  = s:getSrcColor('SrceryBrightBlue')
  let s:cyan         = s:getSrcColor('SrceryCyan')
  let s:red          = s:getSrcColor('SrceryRed')
  let s:bright_red   = s:getSrcColor('SrceryBrightRed')
  let s:orange       = s:getSrcColor('SrceryOrange')
  let s:green        = s:getSrcColor('SrceryGreen')
  let s:bright_green = s:getSrcColor('SrceryBrightGreen')

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}}
  let s:p.normal.left = [ [ s:white, s:blue ], [ s:black, s:gray ] ]
  let s:p.normal.right = [ [ s:white, s:blue ], [ s:black, s:gray ] ]
  let s:p.normal.middle = [ [ s:white, s:bright_black ] ]
  let s:p.inactive.right = [ [ s:gray, s:bright_black ], [ s:gray, s:bright_black ] ]
  let s:p.inactive.left =  [ [ s:gray, s:bright_black ], [ s:gray, s:bright_black ] ]
  let s:p.inactive.middle = [ [ s:gray_alt, s:bright_black ] ]
  let s:p.insert.left = [ [ s:black, s:white ], [ s:black, s:gray ] ]
  let s:p.insert.right = [ [ s:black, s:white ], [ s:black, s:gray ] ]
  let s:p.insert.middle = [ [ s:white, s:bright_black ] ]
  let s:p.replace.left = [ [ s:white, s:bright_red ], [ s:black, s:gray ] ]
  let s:p.replace.right = [ [ s:white, s:bright_red ], [ s:black, s:gray ] ]
  let s:p.replace.middle = [ [ s:white, s:bright_black ] ]
  let s:p.visual.left = [ [ s:black, s:orange ], [ s:white, s:gray_alt ] ]
  let s:p.visual.right = [ [ s:black, s:orange ], [ s:white, s:gray_alt ] ]
  let s:p.visual.middle = [ [ s:white, s:bright_black ] ]
  let s:p.tabline.left = [ [ s:white, s:bright_black ] ]
  let s:p.tabline.tabsel = [ [ s:black, s:gray ] ]
  let s:p.tabline.middle = [ [ s:black, s:bright_black ] ]
  let s:p.tabline.right = [ [ s:black, s:white ] ]
  let s:p.normal.error = [ [ s:white, s:red ] ]
  let s:p.normal.warning = [ [ s:black, s:yellow ] ]

  let g:lightline#colorscheme#srcery#palette = lightline#colorscheme#flatten(s:p)
endif