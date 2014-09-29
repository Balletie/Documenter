as yet unclassified
putOn: aStream

	super putOn: aStream.
	aStream
		<< $>
		<< children
		<< '</'
		<< tag
		<< $>.