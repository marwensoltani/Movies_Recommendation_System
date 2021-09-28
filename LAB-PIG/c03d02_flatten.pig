-- LOAD the hdfs file into a single field per row
A = LOAD '/user/student/DIHPS/data/numbers.txt';
DUMP A;

-- TOKENIZE or separate the words in the field by spaces
-- flatten or put each word in a separate row
B = FOREACH A GENERATE flatten(TOKENIZE($0));
DUMP B;
