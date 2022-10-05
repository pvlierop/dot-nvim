lua << EOF
require('kickstart_nvim.init')
require('custoom')
EOF

if exists("g:neovide")
	" Allow copy paste in neovim
	let g:neovide_input_use_logo = 1

	map <D-v> "+p<CR>
	map! <D-v> <C-R>+
	tmap <D-v> <C-R>+
	vmap <D-c> "+y<CR>

	let g:neovide_transparency=0.9
"	let g:neovide_cursor_antialiasing=v:true
"	let g:neovide_cursor_vfx_mode = "wireframe"
	let g:neovide_cursor_vfx_mode = "pixiedust"

	" g:neovide_transparency should be 0 if you want to unify transparency of
	" content and title bar.
	"let g:neovide_transparency=0.0
	"let g:transparency = 0.8
	"let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
	
endif
