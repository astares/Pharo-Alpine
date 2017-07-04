examples
exampleServer
	<script>
	
	([ self createServer: 'server1' onPort: 8080 ] 
		on: ALServerIsAlreadyExisting
		do: [ self serverNamed: 'server1' ]) inspect