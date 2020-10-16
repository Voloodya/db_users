echo "Start create users and grands"
mysql -f -u root -p"123" < /tmp/git/db_users/sql_create_users_with_grant.sql
