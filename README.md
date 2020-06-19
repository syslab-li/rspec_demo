# README

A Demo Project for Use Rspec and CI with 

# Railsの開発環境を整理
- rails 6
- ruby 2.6.6
- webpacker
## which feature will be use in this project
- vue.js 
- vuex 
 - how to use vuex
- devise
 - how to use devise
- axios
 - how to use axios for http async request
- rspec
 - how to make rspec
 - how to ui test with selenium
 - how to 
- travis-ci
 - how to ci with travis-co

- active_record relations 
 - 1:1
 - 1:N
 - N:N
 - 1:N throgh
 - morph
 - N morph


## what you can find some help in this project

```
$ rails new rspec_demo --webpack=vue
$ yarn add axios vue-axios vue-router vue-template-compiler vuex vue-eslint-parser
$ yarn install 
```  

```
gem 'devise'

$ bundle exec rails g devise:install
$ rails g devise User
$ rake db:migrate
$ rails g devise:views User
$ rails g devise:controllers users
```

# make new controller 
```
$ rails g scaffold posts title:string content:text
$ rake db:migrate

before_action :authenticate_user!
```

## vue.js
```
$ cd app/javascript
$ mkdir views components store routes
```

# rspec
```
group :development, :test do
  gem 'rspec-rails'
  gem "factory_bot_rails"
end

➜  rspec_demo git:(master) ✗ bundle exec rails generate rspec:install
Running via Spring preloader in process 85212
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb

$ bundle exec rspec

```