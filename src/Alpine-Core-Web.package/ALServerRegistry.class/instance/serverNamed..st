accessing
serverNamed: aUniqueName
	"Return the server with the given name"
	
	^self servers at: aUniqueName asSymbol ifAbsent: [  ]