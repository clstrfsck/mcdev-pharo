"Adopted from github.com/renggli/builder"
Transcript show: 'Refactoring'; cr.
Gofer new
	squeaksource: 'rb';
	package: 'AST-Core';
	package: 'AST-Semantic';
	package: 'Refactoring-Core';
	package: 'Refactoring-Changes';
	package: 'Refactoring-Critics';
	package: 'Refactoring-Environment';
	package: 'Refactoring-Spelling';
	package: 'Refactoring-Pharo-Platform';
	load.
!
Transcript show: 'OmniBrowser'; cr.
Gofer new
	renggli: 'omnibrowser';
	package: 'OmniBrowser';
	package: 'OB-Pharo-Platform';
	package: 'OB-Polymorph';
	package: 'OB-Standard';
	package: 'OB-Shout';
	package: 'OB-Refactory';
	package: 'OB-Regex';
	package: 'OB-SUnitIntegration';
	load.
!
Transcript show: 'Tools'; cr.
Gofer new
	renggli: 'unsorted';
	package: 'ECompletion';
	package: 'ECompletionOmniBrowser';
	load.
!
SHPreferences initialize.
!
Transcript show: 'Fixes for items removed and buggy in Pharo 1.4'; cr.
FileStream fileIn: '../cs/OmniBrowser-Fixes.1.cs'.
!
Transcript show: 'Fixes for removed MenuIcon class'; cr.
FileStream fileIn: '../cs/MenuIcon-Fixes.1.cs'.
!
Transcript show: 'Missing FakeClassPool taken from 1.3 13315'; cr.
FileStream fileIn: '../cs/FakeClassPool.1.cs'.
!
Transcript show: '''Project'' class removed from 1.4, now use ''UIManager default'''; cr.
FileStream fileIn: '../cs/ProjectFixes.1.cs'.
!
Transcript show: 'Select OmniBrowser'; cr.
SystemBrowser default: (Smalltalk at: #OBSystemBrowserAdaptor).
