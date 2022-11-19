as yet unclassified
removeAllFromTranscript
	| toRemove |

	toRemove := Transcript dependents select: [:d |
		d class = IntellijPluginCommServer.
	].

	toRemove reverseDo: [:d |
		Transcript removeDependent: d.
	]	