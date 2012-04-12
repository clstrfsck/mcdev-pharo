"Adopted from github.com/renggli/builder"
Smalltalk globals at: #Transcript put: (NonInteractiveTranscript stdout).
!
Transcript crShow: 'Initialize Image Building'.
MCCacheRepository instVarNamed: 'default' put: nil.
Deprecation raiseWarning: false.
