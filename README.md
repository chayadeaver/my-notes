# My Notes 2021
A note application that allows users to manage their notes.

 <!-- ![rails-project](app/assets/images/rails-project.gif) -->


<!-- [Demo](https://www.loom.com/share/991fd0349e054adfb6d727f9e70513b2)| -->
[Deployed App](https://my-notes-2021.herokuapp.com/)

## Features

* Sign up/Log in with authenticated password
* Once signed in, users can create, view, edit and delete their notes.
*

## Tech Used

* Ruby [3.0.1]
* Rails [6.1.3] - MVC Web Framework
* Devise[4.8.0] - gem for authentication and authorization
* PostgreSQL - database
* Rspec-rails - testing
* Guard - automating tests and bundler
* Database_cleaner - cleans database for testing
* Bootstrap - CSS framework
* TailwindCSS - CSS framework
* Trix editor - WYSIWYG editor 

## To Install

* Clone this repo to local machine `git clone <this-repo>`
* Cd into directory and run `bundle install` to install dependencies
* Make sure Postgres app is running. To install Postgres app, go [here](https://www.postgresql.org/download/)
* Run `rails db:create` to create a database
* Run `rails db:migrate` to create tables in database
* Run `rails s` to run server