# Hash

This Ansible role employs recursive search algorithms to identify and extract particular types of files, following which it computes their respective hash values.

## Variables

- `dirs` (default: []) - List of directories to be hashed
- `grep` (default: "") - Regex expression to filter specific files

## Might be Useful

```bash
# Recursively look for particular file types, and once you find the files get their hashes
find . type f -exec sha256sum {} \; 2> /dev/null | grep -Ei '.asp|.js' | sort

# Get information about a file
stat file.txt

# Files and Dates
# Be careful with this, as timestamps can be manipulated and can't be trusted during an IR
find . -printf "%T+ %p\n"

# Show all files created between two dates
find -newerct "01 Jun 2021 18:30:00" ! -newerct "03 Jun 2021 19:00:00" -ls | sort

# Compare Files
# vimdiff is my favorite way to compare two files
vimdiff file1.txt file2.txt

# are these files different yes or no?
diff -q net.txt net2.txt

# quickly show minimal differences
diff -d net.txt net2.txt
```

## References

- [the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge#tool-vimdiff)
