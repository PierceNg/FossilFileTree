commands
addRemove
	^ (self runOSSubprocessFossilCommand: (Array with: 'addremove') in: self repoDir)
		splitOn: Character lf