as yet unclassified
documentMethods: aClass

	aClass selectors asSortedCollection do: [ :sel ||comment|
		currentElement
			h2: [ :name | name
				attribute: 'id' value: sel;
				with: sel ].
			comment := (aClass compiledMethodAt: sel) comment.
			comment ifNotNil: [
					currentElement
						p: comment.
			].
	].