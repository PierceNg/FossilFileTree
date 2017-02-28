commands
commit: aMessage
	| reference returnValue |
	
	[ reference := FileReference newTempFilePrefix: 'fofitr' suffix: 'rtifof' ] 
	doWhileTrue: [ reference exists ].
	
	[	reference writeStream nextPutAll: aMessage; close.
		returnValue := self runOSSubprocessFossilCommand: 
				(Array with: 'commit' with: '--allow-empty' with: '--no-warnings'
						with: '-M' with: reference fullName)
		 	in: self repoDir.	
	] ensure: [ reference delete ].

	^ returnValue