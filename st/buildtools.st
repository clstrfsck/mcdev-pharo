"Adopted from github.com/renggli/builder"
Transcript show: 'Load Build Tools'; cr.
Gofer new
	renggli: 'hudson';
	package: 'HudsonBuildTools';
	load.
!
"HDLintReport relies on RB classes that we don't have."
Smalltalk removeClassNamed: #HDLintReport.
