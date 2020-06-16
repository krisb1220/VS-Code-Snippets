# VS-Code-Snippets
23 useful VSCode snippets that will save you DAYS over time when coding! The most useful being `!xebp`, which is a fully completed Express project boilerplate with it's accompanying batch file that makes it so all you have to do is add `DATABASE=YOUR_MONGO_URI` in your `.env` and **you're done**!x

![example](https://i.gyazo.com/5799f622dc6e9f4ee1075bca3ccd2064.gif)

# Commands

## !xebp
```javascript
    //!x-----------BEFORE USING THIS, RUN THE BATCH FILE PROVIDED AND ADD YOUR MONGOOSE URI AS ** DATABASE ** IN .ENV
    const express = require('express');
    const session = require('express-session');
    const bodyParser = require('body-parser');
    const passport = require('passport');
    const cookieParser = require('cookie-parser');
    const mongoose = require('mongoose');
    const dotenv = require('dotenv');
    const routes = require('./routes/routes');
    const auth = require('./auth/auth');
    const Schemas = ('./database/schemas/schemas');
    const mongooseOptions = {useUnifiedTopology:true, useNewUrlParser:true};
    const app = express();


    dotenv.config();
    app.use(express.static(__dirname+'/public'));
    app.use(cookieParser());
    app.use(bodyParser.json());
    app.use(express.json())
    app.use(bodyParser.urlencoded({ extended: true }));
    app.set('view engine', 'pug')

    app.use(session({
      secret: process.env.SECRET,
      saveUninitialized: true,
      resave:true
    }))

    app.use(passport.initialize());
    app.use(passport.session());

    mongoose.connect(process.env.DATABASE, mongooseOptions, (err, db)=>{
        if(err) console.error(err);  
        else { 
          console.log('Connected to remote database'); 
          auth(app, db); 
          routes(app, db); 
    }
    });

    // console.log(process.env);

    app.listen(process.env.PORT||3000,()=>{
      console.log('App is listening on port ' + process.env.PORT);
    })
```
## !xcb 

```javascript
    /*======================================
    # My Comment #
    ======================================*/
```
## !xhash
```javascript
    bcrypt.hashSync([password], [saltRounds], (err, hash) => {
      if (err) console.error(err)
      else return hash;
    })  
```

## !xhashcomp
```javascript
    bcrypt.compareSync([plain], [hashed])
```

## !xroute 
```javascript
    app.route(['/url']).[post||get]((req, res)=>{

      [res.send(data)||res.json(data)||res.render(data)]

    })
```
## !xpost
```javascript
    app.route(['/url']).post((req, res)=>{

      [res.send(data)||res.json(data)||res.render(data)]

    })
```
## !xget
```javascript
    app.route(['/url']).get((req, res)=>{

      [res.send(data)||res.json(data)||res.render(data)]

    })
```
## !xaxios
```javascript
    axios({
    method: '[post||get]',
      url: `[url]`,
      data: [data],
      redirect: '[redirectOption]'
      })
```
## !xaxpost
```javascript
    axios({
    method: 'get',
      url: `[url]`,
      data: [data],
      redirect: '[redirectOption]'
    })
```
## !xaxget
```javascript
    axios({
    method: 'get',
      url: `[url]`,
      data: [data],
      redirect: '[redirectOption]'
    })
```
## !xreqint
```javascript
    const [varName] = require('./[directory]')
```
## !xreqmod
 ```javascript   
    const [varName] = require('[module]')
```
## !xexpfun
```javascript
    exports.[varName]  = function([params]) {
      [logic]
    }
```
## !xexpvar
```javascript
    exports.[varName]  = [varName2]
```
## !xexpmod
```javascript
    exports.[varName]  = require('./[params]').data;
```
## !xmongooseconnect
```javascript
    mongoose.connect(process.env.DATABASE, {useUnifiedTopology:true, useNewUrlParser:true}, (err, db)=>{

        if(err) console.error(err); 
        else{ 
          [logic]
        }
    });
```
## !xuse
```javascript
    app.use([logic])
```
/*======================================
# !xsession #
======================================*/
```javascript
    app.use(session({
      secret: process.env.SECRET,
      saveUninitialized: true,
      resave:true
    })) 
```
## !xpassport
```javascript
    app.use(passport.initialize());
    app.use(passport.session());
```
## !xsessionpassport
```javascript
    app.use(session({
      secret: process.env.SECRET,
      saveUninitialized: true,
      resave:true
      }))

    app.use(passport.initialize());
    app.use(passport.session());

```
## !xapp 


```javascript
    const app = express() 
```
## !xlistener 
```javascript    
 document.querySelector('[selector]').addEventListener('[listener]',(event)=>{
 
   [data]
 
 })
```

## !xlistenerall 
```javascript
 document.querySelectorAll('[query]').forEach((element)=>{
 
   element.addEventListener('[listener]', (event)=>{
     [doSomething()]
   })
 
 })
 ```
