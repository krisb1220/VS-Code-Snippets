# VS-Code-Snippets
21 useful VSCode snippets that will save you DAYS over time when coding! The most useful being `!ebp`, which is a fully completed Express boilerplate with it's accompanying batch file that makes it so all you have to do is add `DATABASE=YOUR_MONGO_URI` and **you're done**! 

![example](https://i.gyazo.com/5799f622dc6e9f4ee1075bca3ccd2064.gif)

# Commands

## !ebp
```javascript
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
## !cb 

```javascript
    /*======================================
    # My Comment #
    ======================================*/
```
## !hash
```javascript
    bcrypt.hashSync([password], [saltRounds], (err, hash) => {
      if (err) console.error(err)
      else return hash;
    })  
```

## !hashsync
```javascript
    bcrypt.compareSync([plain], [hashed])
```

## !route 
```javascript
    app.route(['/url']).[post||get]((req, res)=>{

      [res.send(data)||res.json(data)||res.render(data)]

    })
```
## !post
```javascript
    app.route(['/url']).post((req, res)=>{

      [res.send(data)||res.json(data)||res.render(data)]

    })
```
## !get
```javascript
    app.route(['/url']).get((req, res)=>{

      [res.send(data)||res.json(data)||res.render(data)]

    })
```
## !axios
```javascript
    axios({
    method: '[post||get]',
      url: `[url]`,
      data: [data],
      redirect: '[redirectOption]'
      })
```
## !axpost
```javascript
    axios({
    method: 'get',
      url: `[url]`,
      data: [data],
      redirect: '[redirectOption]'
    })
```
## !axget
```javascript
    axios({
    method: 'get',
      url: `[url]`,
      data: [data],
      redirect: '[redirectOption]'
    })
```
## !reqint
```javascript
    const [varName] = require('./[directory]')
```
## !reqmod
 ```javascript   
    const [varName] = require('[module]')
```
## !expfun
```javascript
    exports.[varName]  = function([params]) {
      [logic]
    }
```
## !expvar
```javascript
    exports.[varName]  = [varName2]
```
## !expmod
```javascript
    exports.[varName]  = require('./[params]').data;
```
## !mongooseconnect
```javascript
    mongoose.connect(process.env.DATABASE, {useUnifiedTopology:true, useNewUrlParser:true}, (err, db)=>{

        if(err) console.error(err); 
        else{ 
          [logic]
        }
    });
```
## !use
```javascript
    app.use([logic])
```
/*======================================
# !session #
======================================*/
```javascript
    app.use(session({
      secret: process.env.SECRET,
      saveUninitialized: true,
      resave:true
    })) 
```
## !passport
```javascript
    app.use(passport.initialize());
    app.use(passport.session());
```
## !sessionpassport
```javascript
    app.use(session({
      secret: process.env.SECRET,
      saveUninitialized: true,
      resave:true
      }))

    app.use(passport.initialize());
    app.use(passport.session());

```
## !app 

```javascript
    const app = express() 
