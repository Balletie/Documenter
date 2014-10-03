generators
generateLeafs
	"Generate the methods for creating parent tags"
	leafs do: [ :tagString |
		self generateLeafMethod: tagString.
	].