as yet unclassified
documentSelectors: aClass

	currentElement 
		ul: [ :methodList |
			aClass selectors asSortedCollection do: [ :selector |
				methodList
					li: [ :selectorItem | (selectorItem
						attribute: 'class' value: 'selector';
						code) a: [ :selLink | selLink
							attribute: 'href' value: '#',selector;
							with: selector
						].
					].
			].
		].