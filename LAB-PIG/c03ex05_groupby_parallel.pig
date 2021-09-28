
register /usr/lib/pig/piggybank.jar;

DEFINE LENGTH  org.apache.pig.piggybank.evaluation.string.LENGTH();

T = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);

T0 = FOREACH T GENERATE SUBSTRING(county, INDEXOF(county, ',')+1, LENGTH(county)) as state:chararray, population;

T_GRP = GROUP T0 BY (state) PARALLEL 12;

STORE T_GRP INTO '/user/student/DIHPS/output/c03ex05_groupby_parallel';


