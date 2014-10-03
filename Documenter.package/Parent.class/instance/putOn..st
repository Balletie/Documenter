printing
putOn: aStream

	super putOn: aStream.
	aStream
		<< $>
		<< children
		<< '</'
		<< tag
		<< $>.