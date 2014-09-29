as yet unclassified
putOn: aStream
	aStream 
		<< '<!DOCTYPE html'
		<< docType;
		<< $>;
		cr;
		<< '<html>';
		cr;
		<< head;
		cr;
		<< body;
		cr;
		<< '</html>'.