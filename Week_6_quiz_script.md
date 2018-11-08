Here is the shell script to count the number of lines, words and characters for a subset of interact_pep.xml.index files:

find -name "interact*" -type f |xargs wc -l

This gives me an idea of how much data there are for each coral sample (e.g. ...JAA_23..., ...JAA_24..., etc.)