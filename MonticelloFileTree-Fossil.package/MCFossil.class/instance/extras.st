commands
extras
	^ (self runOSSubprocessFossilCommand: (Array with: 'extras') in: self repoDir)
		splitOn: Character lf