server creation
createServer: aUniqueName onPort: aPort

	(self serverNamed: aUniqueName) 
		ifNotNil: [ ALServerIsAlreadyExisting signal: ('Server {1} already existing.' format: aUniqueName) ].
	
