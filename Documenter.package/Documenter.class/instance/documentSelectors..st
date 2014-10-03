documenters
documentSelectors: aClass
	"Document the selectors of this class, which link to the corresponding
	method documentation."
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