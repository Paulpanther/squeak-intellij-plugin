as yet unclassified
categoriesInClass: aClass

	^ (aClass organization categories collect: [:aCategory |
		{ 
			#name -> aCategory. 
			#isInstance -> true.
			#children -> (self methodsInClass: aClass forCategory: aCategory)
		} asDictionary
	]) , (aClass class organization categories collect: [:aCategory |
		{ 
			#name -> aCategory. 
			#isInstance -> false.
			#children -> (self methodsInClass: aClass forCategory: aCategory)
		} asDictionary
	])