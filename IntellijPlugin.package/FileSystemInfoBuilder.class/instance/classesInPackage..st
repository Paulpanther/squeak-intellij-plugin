as yet unclassified
classesInPackage: t1
	^ ((SystemOrganizer default classesIn: t1)
		collect: [:t2 | {#name -> t2 asString. #children
				-> (self categoriesInClass: t2)} asDictionary]) asArray