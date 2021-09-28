
# import data into Hadoop
sqoop import-all --connect "jdbc:mysql://192.168.56.1:3306/wordpress" \
             --username root --password root \
             --table wp_posts \
             --target-dir /user/student/DIHPS/test_table
			 
			 
sqoop import  --connect "jdbc:mysql://localhost:3306/retail_db" \
             --username root --password cloudera \
             --table orders \
             --target-dir /user/cloudera/neila
