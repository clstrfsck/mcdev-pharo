"-*- Smalltalk -*-"
Transcript show: 'Loading Magritte 3 Tests'; cr.
Gofer new
	renggli: 'magritte3';
	package: 'Magritte-Tests-Model';
	package: 'Magritte-Tests-Pharo-Model';
	load.
!
Transcript show: 'Fixes for Magritte Tests.'; cr.
FileStream fileIn: '../cs/Magritte-Fixes.1.cs'.
