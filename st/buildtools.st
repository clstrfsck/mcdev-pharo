"Adopted from github.com/renggli/builder"
Transcript crShow: 'Load Build Tools'.
Gofer new
	renggli: 'hudson';
	package: 'HudsonBuildTools';
	load.
!
"HDLintReport relies on RB classes that we don't have."
Smalltalk removeClassNamed: #HDLintReport.
