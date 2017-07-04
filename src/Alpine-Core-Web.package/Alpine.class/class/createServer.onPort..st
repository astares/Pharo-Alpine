server creation
createServer: aUniqueName onPort: aPort

	| server |
	(self serverNamed: aUniqueName) 
		ifNotNil: [ ALServerIsAlreadyExisting signal: ('Server {1} already existing.' format: aUniqueName) ].
	server := ALWebServer named: aUniqueName port: aPort.
	servers at: server name asSymbol put: server.
	^server 
	