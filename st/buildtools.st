"Adopted from github.com/renggli/builder"
Transcript show: 'Load Build Tools'; cr.
Gofer new
	renggli: 'hudson';
	package: 'HudsonBuildTools';
	load.
!
"Extra logging output for non-silent builds/failures"
FileStream fileIn: '../cs/HDTestReportWithLog.1.cs'.
!
"HDLintReport relies on RB classes that we don't have."
Smalltalk removeClassNamed: #HDLintReport.
