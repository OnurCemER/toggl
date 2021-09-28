# TOGGL CLONE README

This is simple various of toggl. 

# Features
## Admin
Admins can;
* Generate report weekly, monthly or between spesific dates.
* Show all users and destroy another user
* Add or remove category 
## User
Users can;
* login and singup
* show, update and destroy their records
* just show all records
* add new records
## Time Records
Time Records has;
* One user can control many time records
* Time records can have different categories
* Records can be recorded manually or cron.

# Usages
* Ruby 2.7.0
* Ruby on Rails 6.0.4
* JQuery
* PostgreSQL
* Zurb Foundation
* HAML

# Run
First of all clone this repo. After than locate project directory.
- `bundle install` for gemfile dependencies
- `rails db:migrate` or `rails db:schema:load` for database migrations
- For run -> You can use this commands `rails server` or `rails s` on terminal

# Production
This app is running with heroku on this url : https://togglclone.herokuapp.com/
