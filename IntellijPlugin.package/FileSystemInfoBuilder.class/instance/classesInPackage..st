as yet unclassified
classesInPackage: package
	^ ((SystemOrganizer default classesIn: package)
		collect: [:class | {#name -> class asString. #children
				-> (self categoriesInClass: class)} asDictionary]) asArray