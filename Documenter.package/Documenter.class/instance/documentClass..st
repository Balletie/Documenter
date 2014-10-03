documenters
documentClass: aClass
	"Document a Class, generating an HTML file containing information such as:
		class comment,
		superclass and subclass(es),
		class and instance methods (selector, parameters, comment)"
	currentElement
		h1: aClass name;
		p: [ :info | info
			with: 'Superclass: ';
			span:	aClass superclass name;
			br;
			with:	'Subclasses: ';
			span:	aClass subclasses asCommaStringAnd
		];
		h2: 'Class description';
		p: aClass comment;
		h2: 'Class methods'.
	self documentSelectors: aClass classSide.
	self documentMethods: aClass classSide.

	currentElement
		h2: 'Instance methods'.
	self documentSelectors: aClass instanceSide.
	self documentMethods: aClass instanceSide. 
	currentElement
		footer: 'Generated using the Documenter tool in Pharo'