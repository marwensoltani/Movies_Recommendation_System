T = LOAD '/user/student/DIHPS/data/census_2010.csv' 
    Using PigStorage('\t') AS (county:chararray, population:int);

T0 = FOREACH T GENERATE population;

STORE T0 INTO '/user/student/DIHPS/output/c03d01_load';
