as yet unclassified
printOn: aStream
	aStream 
		nextPutAll: '<!DOCTYPE html';
		nextPutAll: docType;
		nextPut: $>;
		cr;
		nextPutAll: '<html>';
		print: head;
		print: body;
		nextPutAll: '</html>'.