
T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T_GRP = GROUP T ALL;

T_CNT = FOREACH T_GRP GENERATE COUNT(T), SUM(T.population);

STORE T_CNT INTO '/user/student/DIHPS/output/c03ex06_group_all';


