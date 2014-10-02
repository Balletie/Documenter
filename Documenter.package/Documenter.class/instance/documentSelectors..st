as yet unclassified
documentSelectors: aClass

	currentElement 
		ul: [ :methodList |
			aClass selectors asSortedCollection do: [ :selector |
				methodList
					li code a: [ :selLink | selLink
						attribute: 'href' value: '#',selector;
						with: selector ].
			].
		].