raw = LOAD 'data/iris.data' USING PigStorage(',') AS (s_length, s_width, p_length,p_width,class);
STORE raw into 'output/test001.out' USING PigStorage('\t');
