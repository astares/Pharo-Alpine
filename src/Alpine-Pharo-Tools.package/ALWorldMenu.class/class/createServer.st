private - actions
createServer
	| serverName port |
	serverName := UIManager default request: 'Server name' initialAnswer: 'server' title: 'Enter a server name'.
	serverName ifNil: [ ^self ].
	port := UIManager default request: 'Server port' initialAnswer: '8080' title: 'Enter a server port'.
	port ifNil:  [ ^self ].
	[Alpine createServer: serverName onPort: port asInteger]
		on: Error
		do: [:x | x inspect		
	]