"Adopted from github.com/renggli/builder"
Transcript show: 'Refactoring Tests'; cr.
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
Transcript show: 'OmniBrowser Tests'; cr.
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
Transcript show: 'Fixes for SourceFileArray -> ExpandedSourceFileArray in Pharo 1.4'; cr.
FileStream fileIn: '../cs/OmniBrowser-Tests-Fixes.1.cs'.
