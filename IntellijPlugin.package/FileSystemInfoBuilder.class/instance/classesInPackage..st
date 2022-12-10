as yet unclassified
classesInPackage: package
	^ ((SystemOrganizer default classesIn: package)
		collect: [:class | self class: class]
	) asArray