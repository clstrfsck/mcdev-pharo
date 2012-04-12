"Adopted from gitorious.org/pharo-build"
Transcript show: 'Run all tests in the image'; cr.
Deprecation raiseWarning: false.
HDTestReport runCategories: Smalltalk organization categories.
