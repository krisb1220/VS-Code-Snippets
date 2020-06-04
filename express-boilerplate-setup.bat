echo > server.js
echo > .env

mkdir public
mkdir auth 
cd auth 
echo > auth.js
cd ../

mkdir database
cd database 
mkdir schemas
cd schemas 
echo > schemas.js
cd ../
cd ../

mkdir routes
cd routes 
echo > routes.js 
cd ../

call npm init
echo ....
echo .....
echo ......
echo .......
echo ........
echo ...........
echo Running package install processes...........

call npm install express express-session body-parser passport mongoose dotenv cookie-parser
call npm update
