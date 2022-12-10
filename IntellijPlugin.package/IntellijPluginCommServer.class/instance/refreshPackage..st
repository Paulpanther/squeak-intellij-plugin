endpoints
refreshPackage: request
    | package |

    package := request at: #package.

    request respond: (FileSystemInfoBuilder new package: package)