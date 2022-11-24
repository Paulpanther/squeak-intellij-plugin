server
onMessage: raw
	| data request |
	
	[
		data := STONJSON fromString: raw.
		request := Request newFromData: data withSocket: self ws.
			
		[
			(request action = #evaluate) ifTrue: [self evaluate: request].
			(request action = #refresh_file_system) ifTrue: [self refreshFileSystem: request].
			(request action = #file_content) ifTrue: [self fileContent: request].
			(request action = #write_file) ifTrue: [self writeFile: request].
			(request action = #new_category) ifTrue: [self newCategory: request].
			(request action = #new_class) ifTrue: [self newClass: request].
			(request action = #new_method) ifTrue: [self newMethod: request].
			(request action = #new_package) ifTrue: [self newPackage: request].
			(request action = #refresh_category) ifTrue: [self refreshCategory: request].
            	(request action = #refresh_class) ifTrue: [self refreshClass: request].
            	(request action = #refresh_package) ifTrue: [self refreshPackage: request].
			(request action = #remove_category) ifTrue: [self removeCategory: request].
			(request action = #remove_class) ifTrue: [self removeClass: request].
			(request action = #remove_method) ifTrue: [self removeMethod: request].
			(request action = #remove_package) ifTrue: [self removePackage: request].
		] on: Error do: [:ex |
			self halt.
			request respondError: ex asString
		]
	] on: Error do: [:ex | 
		self halt.
	]