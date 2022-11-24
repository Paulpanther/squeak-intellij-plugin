endpoints
refreshClass: request
    | class |

    class := Compiler evaluate: (request at: #class).

	request respond: ({
            #name -> (class asString).
            #children -> (FileSystemInfoBuilder new categoriesInClass: class)
        } asDictionary)