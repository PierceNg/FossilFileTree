commands
changes
	^ self runOSSubprocessFossilCommand: (Array with: 'changes')
		 in: self repoDir