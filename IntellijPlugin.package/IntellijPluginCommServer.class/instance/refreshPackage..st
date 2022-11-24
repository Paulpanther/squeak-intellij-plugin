endpoints
refreshPackage: request
    | package |

    package := request at: #package.

    request respond: ({
        #name -> package.
        #children -> (FileSystemInfoBuilder new classesInPackage: package)
    } asDictionary)