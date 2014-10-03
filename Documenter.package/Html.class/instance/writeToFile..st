file-i/o
writeToFile: aFileName
	"Write the contents of the document to a file in the current working
	directory."
	(FileSystem workingDirectory/aFileName) writeStreamDo:[
		:stream | stream << self
	].