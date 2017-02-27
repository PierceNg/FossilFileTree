storing
basicStoreVersion: aVersion
	
	super basicStoreVersion: aVersion.
	(MCFossil new repoDir: self directory fullName)
		addExtras;
		deleteMissing;
		commit: aVersion info message.