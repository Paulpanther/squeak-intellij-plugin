as yet unclassified
methodsInClass: aClass forCategory: aCategory

	^  (aClass methodsInCategory: aCategory) collect: [:aMethod |
		{
			#name -> aMethod.
			#children -> Array new
		} asDictionary
	]