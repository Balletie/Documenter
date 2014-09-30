as yet unclassified
documentClass: aClass

	currentElement
		h1: aClass name;
		p: [ :comment | comment
			with: (aClass comment).
		].
	self documentSelectors: aClass.
	self documentMethods: aClass.