"Adopted from github.com/renggli/builder"
Transcript crShow: 'Refactoring Tests'.
Gofer new
	squeaksource: 'rb';
	package: 'AST-Tests-Core';
	package: 'AST-Tests-Semantic';
	package: 'Refactoring-Tests-Core';
	package: 'Refactoring-Tests-Environment';
	package: 'Refactoring-Tests-Changes';
	package: 'Refactoring-Tests-Critics';
	package: 'Refactoring-Tests-Spelling';
	load.
!
Transcript crShow: 'OmniBrowser Tests'.
Gofer new
	renggli: 'omnibrowser';
	package: 'BogusInfo';
	package: 'OB-Fake';
	package: 'OB-Tests-Core';
	package: 'OB-Tests-Polymorph';
	package: 'OB-Tests-Standard';
	package: 'OB-Tests-Refactory';
	load.
!
Transcript crShow: 'Tool Tests'.
Gofer new
	renggli: 'unsorted';
	package: 'ShoutTests';
	load.
!
Transcript crShow: 'Fixes for items removed and buggy in Pharo 1.4'.
FileStream fileIn: '../cs/OmniBrowser-Tests-Fixes.1.cs'.
