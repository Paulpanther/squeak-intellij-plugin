endpoints
refreshFileSystem: request

	request respond: ({
		#name -> 'root'.
		#children -> (FileSystemInfoBuilder new allPackages)
	} asDictionary)