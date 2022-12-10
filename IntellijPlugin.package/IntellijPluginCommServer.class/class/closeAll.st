as yet unclassified
closeAll
	| toRemove |

	toRemove := Transcript dependents select: [:d |
		d class = IntellijPluginCommServer.
	].

	toRemove reverseDo: [:d |
		Transcript removeDependent: d.
	].
	
	WebServer reset.