commands
missing

	^ (self changes splitOn: Character lf) 
			select: [ :ea |
		 		ea beginsWith: self prefixForMissing ]
			thenCollect: [ :ea |
			 	(ea copyFrom: (1 + self prefixForMissing size) to: ea size) trimmed ]