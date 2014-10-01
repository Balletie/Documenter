as yet unclassified
generateParentMethods: aTag

	| aStream |
	aStream := String new writeStream.
	Parent	
			compile:
(aStream << aTag << Character lf
<< '	^children add: (Parent new elem: '
<< $' << aTag << $' << $)) contents
			classified: 'generated-parent'.

	aStream := String new writeStream.
	Parent
		compile:
(aStream << aTag << ': anObjectOrBlock' << Character lf
<< '	self ' << aTag << ' with: anObjectOrBlock.') contents
		classified: 'generated-parent'.