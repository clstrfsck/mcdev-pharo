"-*- Smalltalk -*-"
Transcript show: 'Loading CSSFrameworks'; cr.
Gofer new
	squeaksource3: 'CSSFrameworks';
	package: 'CSSFrameworks';
	load.
!
" Transcript show: 'Loading Magritte 3'; cr. "
" Gofer new "
" 	renggli: 'magritte3'; "
" 	package: 'Magritte-Model'; "
" 	package: 'Magritte-Pharo-Model'; "
" 	package: 'Magritte-Seaside'; "
" 	package: 'Magritte-Pharo-Seaside'; "
" 	package: 'Magritte-Morph'; "
" 	load. "
!
Transcript show: 'Loading Twitter Bootstrap'; cr.
Gofer new
	squeaksource3: 'TwitterBootstrap';
	package: 'Twitter-Bootstrap-Libraries';
	package: 'Twitter-Bootstrap-Seaside';
	" package: 'Twitter-Bootstrap-Magritte'; "
	load.
