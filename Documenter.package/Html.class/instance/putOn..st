as yet unclassified
putOn: aStream
	aStream 
		nextPutAll: '<!DOCTYPE html';
		nextPutAll: docType;
		nextPut: $>;
		nextPutAll: '<html>'.
	head putOn: aStream.
	body putOn: aStream.
	aStream
		nextPutAll: '</html>'.