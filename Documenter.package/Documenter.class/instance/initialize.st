initializiation
initialize
	"Initialize the document."
	super initialize.
	html := Html html5.
	html head.
	currentElement := html body.