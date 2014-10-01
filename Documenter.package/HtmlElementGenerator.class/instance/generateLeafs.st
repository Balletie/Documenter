as yet unclassified
generateLeafs
	"Generate the methods for creating parent tags"
	leafs do: [ :tagString |
		self generateLeafMethods: tagString.
	].