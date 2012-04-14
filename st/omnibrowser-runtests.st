"Adopted from github.com/renggli/builder"
Transcript show: 'Run the Refactoring and OmniBrowser Tests'; cr.
HDTestReportWithLog runPackages: #(
	'AST-Tests-Core'
	'AST-Tests-Semantic'
	'Refactoring-Tests-Core'
	'Refactoring-Tests-Environment'
	'Refactoring-Tests-Changes'
	'Refactoring-Tests-Critics'
	'Refactoring-Tests-Spelling'
	'OB-Tests-Core'
	'OB-Tests-Polymorph'
	'OB-Tests-Standard'
	'OB-Tests-Refactory'
	'RoelTyper'
	'ECompletion'
	'ShoutTests'
).
