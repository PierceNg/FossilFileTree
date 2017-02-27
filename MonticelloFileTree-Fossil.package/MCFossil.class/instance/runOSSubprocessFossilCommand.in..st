private
runOSSubprocessFossilCommand: anArrayOfStrings in: aDirectory
	"Based on runOSSubprocessGitCommand."
	| classOfOSSUnixSubprocess |
	
	classOfOSSUnixSubprocess := Smalltalk at: #OSSUnixSubprocess.
	classOfOSSUnixSubprocess new
		command: self class fossilCommand;
		arguments: anArrayOfStrings;
		workingDirectory: aDirectory;
		redirectStdout;
		redirectStderr;
		runAndWaitPollingEvery: (Delay forMilliseconds: 5)
			retrievingStreams: true
			onExitDo: [ :command :outString :errString | 
				command isSuccess
					ifTrue: [ ^ outString ]
					ifFalse: [ errString isEmpty
						ifTrue: [ ^ '' ]
						ifFalse: [ MCFossilError new signal: 'Fossil error: ' , errString ]]]
				