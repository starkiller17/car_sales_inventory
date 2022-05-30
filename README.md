<<<<<<< HEAD
# car_sales_inventory
Small Ruby on Rails application that can do basic inventory management for a car dealership manager.
=======

First of all thanks for taking the time to have a look on this project! :)
Below you can find some details about the project.

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

# Requeriments
  Users can log in and can have type “user” or “admin”

  - Users can view the inventory of cars and their details

  - “Admin” users can add and delete cars from the inventory

  - Cars

  - Have a monetary price. The price depreciates 2% every month.

  - Can be new or used

  - Cars are located at a dealership, there may be multiple dealerships

  - Please include at least two tests

  - You may choose which kind of tests to write (unit, integration...)


* Ruby version 3.0.2
* Rails version: 6.0.4.1

* System dependencies
  - bcrypt

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
>>>>>>> 9cebcf4... first commit for car sales inventory rails application
