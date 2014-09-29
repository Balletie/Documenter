as yet unclassified
printOn: aStream
	aStream 
		nextPutAll: '<!DOCTYPE hmtl';
		nextPutAll: docType;
		nextPut: $>;
		print: head;
		print: body.
	