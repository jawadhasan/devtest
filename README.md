# AWS Published Apps

SSH to EC2

ssh -i fm-keypair.pem ec2-user@3.65.103.170 1


	Prepare Migration Scripts:
	- CREATE DATABASE fmidentityserver;
	- ef migrations script --project MyApp.Data --startup-project MayApp.Web --idempotent --output /src/database/MyApp.sql
	- sudo -i -u postgres
	- psql

	  sudo  -u postgres psql -d fmidentityserver -a -f fmscript.sql
	  sudo  -u postgres psql -d fmcoredb -a -f fmAPIscript.sql
	  sudo  -u postgres psql -d fmidentityserver -a -f idpdata3.sql
	  sudo  -u postgres psql -d fmidentityserver -a -f idpdata333.sql
	  

	Prepare .Net Core Lambda Setup
	
	- https://dev.to/sunilkumarmedium/build-a-serverless-dotnet-core-web-api-with-aws-lambda-and-api-gateway-22dd

	Prepare Angular App
	
	- Deploy it to S3

==================================================================
[DataOnlyCommand]
pg_dump -U postgres -W -d FM_SYSTEM --verbose --format=p --section=data --inserts --column-inserts > ~/fmsystemdump.sql

[Schema+Data]
pg_dump -U postgres -W -d FM_SYSTEM --verbose --format=p --inserts --column-inserts > ~/fmsystemschemadump.sql

[from Bastian to DMT]
scp -i ~/FMSystem-maintenance.pem ./fmscript.sql  ec2-user@10.1.0.104:/home/ec2-user/ 

[from DMT to Bastian]
scp -i ~/FMSystem-maintenance.pem ./fmsystemdump.sql  ec2-user@10.1.2.251:/home/ec2-user/




==================================================================
alice
Pass123$