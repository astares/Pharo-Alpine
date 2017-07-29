private - accessing
iconCache
	"Returns the receivers icon cache"
	
	^ IconCache ifNil: [ IconCache := Dictionary new ]