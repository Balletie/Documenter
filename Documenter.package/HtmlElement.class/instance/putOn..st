as yet unclassified
putOn: aStream

	aStream
		<< $<;
		<< tag.
	attributes keysAndValuesDo: [ :attr :val | 
		aStream space; << attr; << '="'; << val; << $"].