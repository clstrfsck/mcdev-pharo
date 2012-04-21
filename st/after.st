"Adopted from github.com/renggli/builder"
Transcript show: 'Unload Build Tools'; cr.
[ Gofer new
	package: 'HudsonBuildTools';
	unload ]
		on: Error
		do: [ :err | "package not present" ].
!
Transcript show: 'Clear Monticello Caches'; cr.
MCCacheRepository instVarNamed: 'default' put: nil.
MCFileBasedRepository flushAllCaches.
MCMethodDefinition shutDown.
MCDefinition clearInstances.
!
Transcript show: 'Cleanup Smalltalk'; cr.
Smalltalk flushClassNameCache.
Smalltalk fixObsoleteReferences.
Smalltalk cleanOutUndeclared.
Smalltalk organization removeEmptyCategories.
Smalltalk allClassesAndTraitsDo: [ :each |
	each organization removeEmptyCategories; sortCategories.
	each class organization removeEmptyCategories; sortCategories ].
!
Transcript show: 'Cleanup System Memory'; cr.
Author reset.
Smalltalk garbageCollect.
Symbol compactSymbolTable.
Deprecation raiseWarning: false. "Deprecations off for now"
!
Transcript show: 'Reinstall standard transcript, then Save and Quit'; cr.
ThreadSafeTranscript install.
SmalltalkImage current snapshot: true andQuit: true.
