as yet unclassified
putOn: aStream
	aStream 
		<< '<!DOCTYPE html'
		<< docType;
		<< $>;
		lf;
		<< '<html>';
		lf;
		<< head;
		lf;
		<< body;
		lf;
		<< '</html>'.