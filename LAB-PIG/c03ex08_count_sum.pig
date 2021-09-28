
register /usr/lib/pig/piggybank.jar;

DEFINE LENGTH  org.apache.pig.piggybank.evaluation.string.LENGTH();

T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T0 = FOREACH T GENERATE SUBSTRING(county, INDEXOF(county, ',')+1, LENGTH(county)) as state:chararray, population;

T_GRP = GROUP T0 BY (state);

T_CNT = FOREACH T_GRP GENERATE flatten(group), COUNT(T0), SUM(T0.population); 

STORE T_CNT INTO '/user/student/DIHPS/output/c03ex08_count_sum';


