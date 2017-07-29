accessing
createServer: aUniqueName onPort: aNumber

	| server |
	(self serverNamed: aUniqueName) 
		ifNotNil: [ ALServerIsAlreadyExisting signal: ('Server {1} already existing.' format: aUniqueName) ].
	server := ALWebServer named: aUniqueName port: aNumber.
	self servers at: server name asSymbol put: server.
	^server 
	