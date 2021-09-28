
# import data into Hadoop
sqoop import --connect "jdbc:mysql://192.168.56.1:3306/wordpress" \
             --username student --password Metadata0 \
             --target-dir /user/student/DIHPS/test_table_query \
             --m 1 \
             --query "select col2, col1
                        from test_table 
                       where col1 > 0
                          and \$CONDITIONS"
