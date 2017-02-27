commands
version
	^ self runOSSubprocessFossilCommand: (Array with: 'version')
		 in: self repoDir