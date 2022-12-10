endpoints
refreshCategory: request
	| class category isInstance |

	class := request classParam.
	category := request at: #category.
	isInstance := request at: #isInstance.

	request respond: (FileSystemInfoBuilder new 
		category: category 
		inClass: class 
		isInstance: isInstance)