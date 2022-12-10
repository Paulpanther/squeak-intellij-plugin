as yet unclassified
category: aCategory inClass: aClass isInstance: isInstance

	^ { 
		#name -> aCategory. 
		#isInstance -> isInstance.
		#methods -> (self methodsInClass: aClass forCategory: aCategory)
	} asDictionary