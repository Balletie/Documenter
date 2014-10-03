generators
generateLeafMethod: aTag

	| aStream |
	aStream := String new writeStream.
	Parent	
			compile:
(aStream << aTag << Character lf
<< '	^children add: (Leaf new elem: '
<< $' << aTag << $' << $)) contents
			classified: 'generated-leaf'.