as yet unclassified
documentSelectors: aClass

	currentElement 
		ul: [ :methodList |
			aClass selectors do: [ :selector |
				methodList
					li a: [ :selLink | selLink
						attribute: 'href' value: '#',selector;
						with: selector ].
			].
		].