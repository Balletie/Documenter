as yet unclassified
documentMethods: aClass

	aClass selectors asSortedCollection do: [ :sel ||meth comment|
		currentElement
			div: [ :method | method
				attribute: 'class' value: 'method';
				code: [ :name | name
					attribute: 'id' value: sel;
					attribute: 'class' value: 'selector';
					with: sel ].

				meth := (aClass compiledMethodAt: sel).
				meth numArgs == 0 ifFalse: [
				method
					span: 'Parameters: ';
					code: [ :params | params
						attribute: 'class' value: 'params';
						with: meth argumentNames asCommaString.
					].
				].
				comment := meth comment.
				comment ifNotNil: [
						method
							p: comment.
				].
			].
	].