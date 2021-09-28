
T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T0 = FOREACH T GENERATE population;

T1 = FILTER T0 BY population > 50000;

T2 = DISTINCT T1;

T3 = LIMIT T2 100;

STORE T3 INTO '/user/student/DIHPS/output/c03ex03_distinct';


