
T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

TS1 = SAMPLE T 0.01;
TS2 = SAMPLE T 0.10;

STORE TS1 INTO '/user/student/DIHPS/output/c03ex09_sample1';
STORE TS2 INTO '/user/student/DIHPS/output/c03ex09_sample2';


