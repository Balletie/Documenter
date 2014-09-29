as yet unclassified
with: anObject

	anObject isBlock ifTrue: [
		anObject cull: self.
	];
	ifFalse: [
	children add: anObject.
	].
	^self