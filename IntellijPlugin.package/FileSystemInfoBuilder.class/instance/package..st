as yet unclassified
package: aPackage

	^ { 
		#name -> aPackage. 
		#classes -> (self classesInPackage: aPackage) 
	} asDictionary