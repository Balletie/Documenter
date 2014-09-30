as yet unclassified
documentMethods: aClass

	aClass hasClassSide & aClass isInstanceSide ifTrue: [
		self documentMethods: (aClass classSide).
	].
	aClass selectorsAndMethodsDo: [ :sel :meth |
		currentElement
			h2: [ :name | name
				attribute: 'id' value: sel;
				with: sel ].
			meth comment ifNotNil: [
					currentElement
						p: meth comment.
			].
	].