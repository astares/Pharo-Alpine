accessing
serverNamed: aUniqueName
	"Return the server with the given name"
	
	^servers at: aUniqueName asSymbol ifAbsent: [  ]