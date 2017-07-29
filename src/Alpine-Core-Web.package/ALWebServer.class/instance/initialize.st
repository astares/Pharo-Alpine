accessing
initialize

	super initialize.
	server := ZnServer defaultServerClass new.
	server delegate: ALCompositeRequestRouter new.	