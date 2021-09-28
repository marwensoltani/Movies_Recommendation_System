
T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T0 = FOREACH T GENERATE population;

T1 = FILTER T0 BY population > 50000;

T2 = DISTINCT T1;

T3 = ORDER T2 BY population desc; 
T4 = LIMIT T3 100;

T5 = ORDER T2 BY population asc; 
T6 = LIMIT T5 100;

T7 = UNION T4, T6;

STORE T7 INTO '/user/student/DIHPS/output/c03ex07_union';


