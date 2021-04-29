# AWS Published Apps

	Prepare Migration Scripts:
	- CREATE DATABASE fmidentityserver;
	- ef migrations script --project MyApp.Data --startup-project MayApp.Web --idempotent --output /src/database/MyApp.sql
	- sudo -i -u postgres
	- psql

	  sudo  -u postgres psql -d fmidentityserver -a -f fmscript.sql
	  sudo  -u postgres psql -d fmcoredb -a -f fmAPIscript.sql
	  sudo  -u postgres psql -d fmidentityserver -a -f idpdata3.sql
	  

	Prepare .Net Core Lambda Setup
	
	- https://dev.to/sunilkumarmedium/build-a-serverless-dotnet-core-web-api-with-aws-lambda-and-api-gateway-22dd

	Prepare Angular App
	
	- Deploy it to S3

==================================================================

alice
Pass123$