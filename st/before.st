"Adopted from github.com/renggli/builder"
Smalltalk globals at: #Transcript put: (NonInteractiveTranscript stdout).
!
Transcript show: 'Initialize Image Building'; cr.
MCCacheRepository instVarNamed: 'default' put: nil.
Deprecation raiseWarning: false.
