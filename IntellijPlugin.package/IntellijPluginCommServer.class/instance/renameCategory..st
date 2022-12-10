endpoints
renameCategory: request

	request classParam
		renameCategory: (request at: #category) toBe: (request at: #newName).