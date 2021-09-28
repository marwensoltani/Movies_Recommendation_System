
T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T0 = FOREACH T GENERATE population;

T1 = FILTER T0 BY population > 50000;

T2 = DISTINCT T1;

T3 = ORDER T2 BY population desc;

T4 = LIMIT T3 100;

STORE T4 INTO '/user/student/DIHPS/output/c03ex04_orderby';


