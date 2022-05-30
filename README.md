<<<<<<< HEAD
# car_sales_inventory
Small Ruby on Rails application that can do basic inventory management for a car dealership manager.
=======
# README

Please check your Ruby and Rails versions.
After downloading the zip code from GitHub and unzipped, go to the directory and run following commands on the terminal:
- bundle install
- bundle udpate
- rails db:migrate

To use the application as Admin user, open the rails console, by typing "rails c" on the app directory and create a new user as follows,
For admins:
User.create(email: "your_email", password: "your_password", user_type: "admin")
For normal users:
User.create(email: "your_email", password: "your_password", user_type: "user")

Then you can start the application by typing "rails s", open a broswer and on the url section type "localhost:3000" and you can login with the credentials from last step.

Things you may want to cover:

* Ruby version 3.0.2
* RAils version: 6.0.4.1

* System dependencies
* bcrypt

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
>>>>>>> 9cebcf4... first commit for car sales inventory rails application
