commands
add: aFileName
	^ self runOSSubprocessFossilCommand: (Array with: 'add' with: aFileName) 
		in: self repoDir
		