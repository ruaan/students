# students

a [Sails v1](https://sailsjs.com) application


### Links

+ [Sails framework documentation](https://sailsjs.com/get-started)
+ [Version notes / upgrading](https://sailsjs.com/documentation/upgrading)
+ [Deployment tips](https://sailsjs.com/documentation/concepts/deployment)
+ [Community support options](https://sailsjs.com/support)
+ [Professional / enterprise options](https://sailsjs.com/enterprise)


## Table of Contents (Optional)

> If your `README` has a lot of info, section headers might be nice.

- [Installation](#installation)
- [Running](#running)
- [Testing](#testing)
- [APis](#apis)
- [FAQ](#faq)
- [Support](#support)
- [License](#license)


---



## Installation


### Setup


### Step 1

```shell
$ npm install
```
### Step 2
> make sure sails.js is installed

```shell
$ npm -g install sails

```
### Step 3
> change config -> datastores.js to your mysql settings

```shell
adapter: 'sails-mysql',
url: 'mysql://xx:xx@xx:3306/students',

```

### Run



```shell
$ sails lift
```

### Test


```shell
$ npm test
```

### Api Endpoints

 >  GET http://students-alb-1505487689.ap-southeast-1.elb.amazonaws.com/fetchStudents?class=3A
 >  GET http://students-alb-1505487689.ap-southeast-1.elb.amazonaws.com/fetchStudents?id=223333445
 >  POST http://students-alb-1505487689.ap-southeast-1.elb.amazonaws.com/student
 >  PUT http://students-alb-1505487689.ap-southeast-1.elb.amazonaws.com/student
 >  Delete http://students-alb-1505487689.ap-southeast-1.elb.amazonaws.com/student

