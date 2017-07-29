world menu
worldMenuOn: aBuilder
	<worldMenu>

	(aBuilder item: 'Alpine')		
		icon: self iconProvider serverIcon;
		order: 0.5.
	
	(aBuilder item: 'Create server')
		action: [ self createServer ];
		parent: #'Alpine';
		icon: self iconProvider serverIcon.
		
	aBuilder withSeparatorAfter.	
		
	Alpine servers	do: [:each |
			(aBuilder item: each name)
				action: [ self createServer ];
				parent: #'Alpine'	
	]
	