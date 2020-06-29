#######################################################
# Cheat sheet for interacting with the local filesystem
#######################################################

### BASIC FILE INTERACTIONS ###
File.exists?("test.txt")
File.rename("old.txt", "new.txt")
Dir.exists?("/home/test")
Dir.mkdir("/tmp/test")


### READING ###
# Read whole file
file_data = File.read("test.txt")
# Loop through one line at a time
File.foreach("test.txt") { |line| puts line }

### WRITING ###
# Overwrite existing contents
file = File.open("test.txt", "w")
file.write("wow I wrote this")
file.close
# Append to existing contents
File.write("test.txt", "I'm count von count \n")
File.write("test.txt", [1, 2, 3].join("\n"), mode: "a")
