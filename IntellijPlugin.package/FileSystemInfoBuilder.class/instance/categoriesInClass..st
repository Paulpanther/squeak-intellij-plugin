as yet unclassified
categoriesInClass: aClass

	^ (aClass organization categories collect: [:aCategory |
		self category: aCategory inClass: aClass isInstance: true.
	]) , (aClass class organization categories collect: [:aCategory |
		self category: aCategory inClass: aClass class isInstance: false.
	])