as yet unclassified
allPackages

	^ SystemOrganizer default categories collect: [:aPackage | 
		self package: aPackage
	]