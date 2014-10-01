as yet unclassified
documentClass: aClass

	currentElement
		h1: aClass name;
		p: [ :comment | comment
			with: (aClass comment).
		];
		h2: 'Class methods'.
	self documentSelectors: aClass classSide.
	self documentMethods: aClass classSide.

	currentElement
		h2: 'Instance methods'.
	self documentSelectors: aClass instanceSide.
	self documentMethods: aClass instanceSide.