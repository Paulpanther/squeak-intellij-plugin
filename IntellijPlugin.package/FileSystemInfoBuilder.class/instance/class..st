as yet unclassified
class: class
	^ {
		#name -> class asString. 
		#instanceVariables -> (class instVarNames copy).
		#classVariables -> (class class instVarNames copy).
		#comment -> class organization classComment asString.
		#superClass -> class superclass asString.
		#categories -> (self categoriesInClass: class)
	} asDictionary