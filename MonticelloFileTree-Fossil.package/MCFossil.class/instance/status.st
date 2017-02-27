commands
status
	^ self runOSSubprocessFossilCommand: (Array with: 'status')
		 in: self repoDir