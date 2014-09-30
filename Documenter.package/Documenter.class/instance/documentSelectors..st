as yet unclassified
documentSelectors: aClass

	aClass hasClassSide & aClass isInstanceSide ifTrue: [
		self documentSelectors: (aClass classSide).
	].
	currentElement 
		ul: [ :methodList |
			aClass selectors do: [ :selector |
				methodList
					li a: [ :selLink | selLink
						attribute: 'href' value: '#',selector;
						with: selector ].
			].
		].