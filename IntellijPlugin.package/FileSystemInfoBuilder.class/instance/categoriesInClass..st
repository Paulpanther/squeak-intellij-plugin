as yet unclassified
categoriesInClass: aClass

	^ (aClass organization categories collect: [:aCategory |
		{ 
			#name -> aCategory. 
			#children -> (self methodsInClass: aClass forCategory: aCategory)
		} asDictionary
	])