
T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T0 = FOREACH T GENERATE population;

T1 = FILTER T0 BY population > 50000;

STORE T1 INTO '/user/student/DIHPS/output/c03ex01_filter';


