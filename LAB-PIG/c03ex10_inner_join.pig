
T1 = LOAD '/user/student/DIHPS/data/census_2010.csv' Using PigStorage('\t') AS(county:chararray, population:int);
T2 = LOAD '/user/student/DIHPS/data/census_2011.csv' Using PigStorage('\t') AS(county:chararray, population:int);


T_JOIN = JOIN T1 BY (county),
              T2 BY (county);

T_OUT = FOREACH T_JOIN 
       GENERATE T1::county,
                T1::population as pop2010,
                T2::population as pop2011;

STORE T_OUT INTO '/user/student/DIHPS/output/c03ex10_inner_join';

