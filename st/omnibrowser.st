"Adopted from github.com/renggli/builder"
Transcript crShow: 'Refactoring'.
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
Transcript crShow: 'OmniBrowser'.
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
Transcript crShow: 'Tools'.
Gofer new
	renggli: 'unsorted';
	package: 'Shout';
	package: 'ECompletion';
	package: 'ECompletionOmniBrowser';
	load.
!
SHPreferences initialize.
!
Transcript crShow: 'Fixes for items removed and buggy in Pharo 1.4'.
FileStream fileIn: '../cs/OmniBrowser-Fixes.1.cs'.
!
Transcript crShow: 'Fixes for removed MenuIcon class'.
FileStream fileIn: '../cs/MenuIcon-Fixes.1.cs'.
!
Transcript crShow: 'Missing FakeClassPool taken from 1.3 13315'.
FileStream fileIn: '../cs/FakeClassPool.1.cs'.
!
Transcript crShow: '''Project'' class removed from 1.4, now use ''UIManager default'''.
FileStream fileIn: '../cs/ProjectFixes.1.cs'.
!
Transcript crShow: 'Select OmniBrowser'.
SystemBrowser default: (Smalltalk at: #OBSystemBrowserAdaptor).
