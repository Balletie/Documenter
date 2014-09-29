as yet unclassified
generateParents
	"Generate the methods for creating parent tags"
	parents do: [ :tagString | | stream |
		stream := String new writeStream.
		Parent	
			compile:
(stream << tagString << Character lf
<< '	^children add: (Parent new elem: '
<< $' << tagString << $' << $)) contents
			classified: 'generated'.

		stream := String new writeStream.
		Parent
			compile:
(stream << tagString << ': anObjectOrBlock' << Character lf
<< '	self ' << tagString << ' with: anObjectOrBlock.') contents
			classified: 'generated'.
	].