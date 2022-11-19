as yet unclassified
newFromData: data withSocket: aSocket
	^ Request new
		id: (data at: #id ifAbsent: [nil]);
		action: (data at: #action);
		content: (data at: #content);
		ws: aSocket.