A = LOAD '/user/student/DIHPS/data/numbers.txt';

-- DUMP A;
STORE A INTO '/user/student/DIHPS/output/wordcnt_A';

-- tokenize the lines into words
B = FOREACH A GENERATE flatten(TOKENIZE($0));
-- DUMP B;
STORE B INTO '/user/student/DIHPS/output/wordcnt_B';

--number of occurrences of each word
C = GROUP B BY $0;
-- DUMP C ;
STORE C INTO '/user/student/DIHPS/output/wordcnt_C';

-- transpose or flatten the output into a single column
D = FOREACH C GENERATE flatten(group), COUNT(B.$0);
--DUMP D;
STORE D INTO '/user/student/DIHPS/output/wordcnt_D';

--number of unique words
E = DISTINCT B;
F = GROUP E ALL;
-- DUMP F ;
STORE F INTO '/user/student/DIHPS/output/wordcnt_F';

G = FOREACH F GENERATE COUNT(E);
--DUMP G;
STORE G INTO '/user/student/DIHPS/output/wordcnt_G';


-- number of words
H = GROUP B ALL;
I = FOREACH H GENERATE COUNT(B);
--DUMP I;
STORE I INTO '/user/student/DIHPS/output/wordcnt_I';

