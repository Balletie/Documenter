generators
generateParents
	"Generate the methods for creating parent tags"
	parents do: [ :tagString |
		self generateParentMethods: tagString.
	].