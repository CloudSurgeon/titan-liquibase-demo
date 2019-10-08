# Demo Script

1. `titan clone s3://titan-data-demo/hello-world/postgres ugdemo`
2. `titan ls`
3. `source .sourceme` (if you want to persist/inspect the pushes to the ssh server, execute `source .sourceme PERSIST`)
4. `type liquibase`
5. `liquibase generateChangeLog`
6. `liquibase changeLogSync`
7. `psql postgres://postgres:postgres@localhost/postgres -t -c 'SELECT * FROM DATABASECHANGELOG;'`
8. `titan commit -m "baselined with Liquibase" ugdemo`
9. `cat newtable.yaml >> changelog/changelog.yaml`
10. `liquibase validate`
11. `liquibase updateSQL`
12. `liquibase update`
13. `psql postgres://postgres:postgres@localhost/postgres -t -c '\d newtable;'`
14. `titan commit -m "Created table newtable with Liquibase." ugdemo`
15. `psql postgres://postgres:postgres@localhost/postgres -t -c '\dt;'`
16. `psql postgres://postgres:postgres@localhost/postgres -t -c 'DROP SCHEMA public CASCADE;'`
17. `psql postgres://postgres:postgres@localhost/postgres -t -c '\dt;'`
18. `titan log ugdemo`
19. `titan log ugdemo | sed '/commit/h; $!d; x'| awk '{print $2}'`
20. `titan checkout -c $(titan log ugdemo | sed '/commit/h; $!d; x'| awk '{print $2}') ugdemo`
21. `psql postgres://postgres:postgres@localhost/postgres -t -c '\dt;'`
22. `titan remote add -r ssh ssh://root:root@${SSHSERVER}:22/data ugdemo`
23. `titan push -r ssh ugdemo`
24. `titan stop ugdemo`
25. `titan rm -f ugdemo`
26. `titan run -- --name mongo -p 27017:27017 -d mongo:latest`
27. `mongo --eval 'db.employees.insert({firstName: "Adam", lastName: "Bowen"})'`
28. `titan commit -m "first employee" mongo`
29. `mongo --eval 'db.employees.insert({firstName: "Sanjeev", lastName: "Sharma"})'`
30. `mongo --eval 'db.employees.find()'`
31. `titan checkout -c $(titan log mongo | sed '/commit/h; $!d; x'| awk '{print $2}') mongo`
32. `mongo --eval 'db.employees.find()'`
33. `titan rm -f mongo`
34. `titan clone s3://titan-data-demo/hello-world/dynamodb dynamo`
35. `aws dynamodb scan --endpoint http://localhost:8000 --table-name messages | jq -r ".Items[0].message.S"`
36. `titan rm -f dynamo`
37. `docker rm -f sshd`