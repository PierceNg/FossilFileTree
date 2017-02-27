commands
commit: aMessage
	^ self runOSSubprocessFossilCommand: (Array with: 'commit' with: '-m' with: aMessage)
		 in: self repoDir