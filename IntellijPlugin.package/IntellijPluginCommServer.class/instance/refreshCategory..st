endpoints
refreshCategory: request
    | class category |

    class := Compiler evaluate: (request at: #class).
    category := request at: #category.

    request respond: ({
            #name -> category.
            #children -> (FileSystemInfoBuilder new methodsInClass: class forCategory: category)
        } asDictionary)