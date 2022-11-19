as yet unclassified
allPackages

	^ SystemOrganizer default categories collect: [:aPackage | 
		{ 
			#name -> aPackage. 
			#children -> (self classesInPackage: aPackage) 
		} asDictionary
	]