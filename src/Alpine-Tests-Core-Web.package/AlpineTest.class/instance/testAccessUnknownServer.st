tests
testAccessUnknownServer

	self assert: (Alpine serverNamed: 'Unknown') equals: nil