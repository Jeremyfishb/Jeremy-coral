Here is the shell script to count the number of lines, words and characters for a subset of interact_pep.xml.index files:

find -name "interact*" -type f | xargs wc

This gives me an idea of how much data there are for each coral sample (e.g. ...JAA_23..., ...JAA_24..., etc.)

It should look like this:

   9852   88590 1229132 ./data/interact_pep.xml.index_files/interact-2018_March_12_Coral_JAA_23.pep.xml.index
  10372   93270 1296245 ./data/interact_pep.xml.index_files/interact-2018_March_12_Coral_JAA_24.pep.xml.index
  10487   94305 1316440 ./data/interact_pep.xml.index_files/interact-2018_March_12_Coral_JAA_25.pep.xml.index
  11331  101901 1419602 ./data/interact_pep.xml.index_files/interact-2018_March_12_Coral_JAA_26.pep.xml.index
  42042  378066 5261419 total
