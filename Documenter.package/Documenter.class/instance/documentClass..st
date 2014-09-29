as yet unclassified
documentClass: aClass
	currentElement
		h1: aClass name;
		p: [ :comment | comment
			with: (aClass comment);
			ul: [ :methodList |
				aClass selectors do: [ :selector |
					methodList
						li: selector
				].
			].
		].