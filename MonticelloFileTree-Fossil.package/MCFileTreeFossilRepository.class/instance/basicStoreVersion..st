storing
basicStoreVersion: aVersion
	
	super basicStoreVersion: aVersion.
	(MCFossil new repoDir: self directory fullName)
		addRemove;
		commit: aVersion info message.