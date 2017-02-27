commands
delete: aFileName
	^ self runOSSubprocessFossilCommand: (Array with: 'delete' with: aFileName) 
		in: self repoDir
		