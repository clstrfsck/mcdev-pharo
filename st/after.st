"Adopted from github.com/renggli/builder"
Transcript crShow: 'Unload Build Tools'.
[ Gofer new
	package: 'HudsonBuildTools';
	unload ]
		on: Error
		do: [ :err | "package not present" ].
!
Transcript crShow: 'Clear Monticello Caches'.
MCCacheRepository instVarNamed: 'default' put: nil.
MCFileBasedRepository flushAllCaches.
MCMethodDefinition shutDown.
MCDefinition clearInstances.
!
Transcript crShow: 'Cleanup Smalltalk'.
Smalltalk flushClassNameCache.
Smalltalk organization removeEmptyCategories.
Smalltalk allClassesAndTraitsDo: [ :each |
	each organization removeEmptyCategories; sortCategories.
	each class organization removeEmptyCategories; sortCategories ].
!
Transcript crShow: 'Cleanup System Memory'.
Author reset.
Smalltalk garbageCollect.
Symbol compactSymbolTable.
Deprecation raiseWarning: false. "Deprecations off for now"
!
Transcript crShow: 'Reinstall standard transcript'.
ThreadSafeTranscript install.
!
Transcript crShow: 'Save and Quit'.
SmalltalkImage current snapshot: true andQuit: true.
