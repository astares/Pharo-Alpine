world menu
worldMenuOn: aBuilder
	<worldMenu>
 
	| uniqueMenuID |
	(aBuilder item: 'Alpine')		
		icon: self iconProvider serverIcon;
		order: 0.5.
	aBuilder withSeparatorAfter.	
	
	(aBuilder item: 'Create server')
		action: [ self createServer ];
		parent: #'Alpine';
		icon: self iconProvider serverIcon.
		
	aBuilder withSeparatorAfter.	
		
	Alpine servers	do: [:each |
			uniqueMenuID := ('Alpine', each name) asSymbol.
			(aBuilder item: uniqueMenuID)
				label: each name, ' ', each port asString;			
				parent: #'Alpine'.
			(aBuilder item: 'Start')	
				icon: self iconProvider serverStartIcon;			 		
				action: [ self startServer: each ];					
				parent: uniqueMenuID.	
			(aBuilder item: 'Stop')	
				icon: self iconProvider serverStopIcon;	
				action: [ self stopServer: each ];						 		
				parent: uniqueMenuID.
			(aBuilder item: 'Browse')	
				icon: self iconProvider serverIcon;			 		
				action: [ self browseServer: each ];								
				parent: uniqueMenuID.	
						
	]
	