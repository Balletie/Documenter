as yet unclassified
putOn: aStream

	super printOn: aStream.
	aStream nextPut: $>.
	children do: [ :each | each putOn: aStream].
	aStream
		nextPutAll: '</';
		nextPutAll: tag;
		nextPut: $>.