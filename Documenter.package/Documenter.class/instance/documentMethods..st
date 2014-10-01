as yet unclassified
documentMethods: aClass

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