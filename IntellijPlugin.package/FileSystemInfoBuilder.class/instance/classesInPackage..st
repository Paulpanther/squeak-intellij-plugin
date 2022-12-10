as yet unclassified
classesInPackage: package
	^ ((SystemOrganizer default classesIn: package)
		collect: [:class | {
			#name -> class asString. 
			#instanceVariables -> class instVarNames.
			#classVariables -> class class instVarNames.
			#comment -> class organization comment asString.
			#superClass -> class superclass asString.
			#children -> (self categoriesInClass: class)
		} asDictionary]) asArray