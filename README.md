# Ruby on Rails Order Management System (ROMS)

## About this application

This application is created by MD INZAMUL HAQUE for INFORTECH Solutions. This is a simple order management system. <br>
##### Framework: Ruby on Rails 5.0
##### Language : Ruby 2.2.4

## Demo
https://www.youtube.com/watch?v=74vZmYu7dV0

## Install
- Install all gems by typing this:
```
bundle install
```
- To change Database go to "config/database.yml" and then change database. Default Database is SQLite.

- Migrate Database by typing this:
```
rake db:migrate
```
- Login:
	Username: inzamul36@live.com<br>
	Password: 123456asdfgh

- To Add new user go to "config/route.rb" change this line to 
```
devise_for :users, path_names: { 
		sign_up: '' #Stop Sign Up
	}
```
to
```
devise_for :users
```
and then go to /sign_up page by web browser. Fill the form. 
- Again change that line to hide sign_up page.

## Features
- Add order
- Export Order (pdf, excel, csv and etc)
- Edit / Delete Order
- Search Order
- Print Invoice
- Easy interface
- Mobile view

## Uses
* Restaurant Order
* Facebook Commerce
* etc...

### Contact me 
Facebook: facebook.com/inzamul36 <br>
Email: inzamul36@gmail.com, inzamuk36@live.com, inzamul36@yahoo.com    