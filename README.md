# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# message_app_5
CryptMessage App
This personal project delivers end to end Realtime messaging between logged in users over HTTPS connections.
The project was written in Rails 5.0
Backend uses Rails(Model, View, Controller) and MySQL database
Frontend (Views) uses Semantic UI, CSS and Javascript
To facilitate instant messaging between users I implemented channels 
driven by Application cable.

Download a clone of the project from my github repo and see the fully commented project codes.
Below are the top level design segments of the codes.

Models: (backend)
    Application Record Model - manages all data read/write to mySQL database
    Messages Model – manages message storage and retrieval from mySQL database
    User Model – manages use sessions and interaction with the mySQL database

Views: (everything the users sees and interacts with)
    Home View – Landing page of the application
    Chatroom View – default page for logged in users.
    Layout Views – Manages the layout of most of the pages the user will see
    Messages View – manages messaging sessions by logged in users
    Session View – manages login and logout sessions of users
    Shared Views – manages views common to multiple screens the user will see.
    Users Views  - manages user creation and edit

Controllers: (backend)
    Application Controller – Controller for all the application functions. The rest below are sub-controllers to the main application controller.
    Chatroom Controller – Sub-controller for chatroom
    Home Controller – Sub-controller for Home screen
    Messages Controller – Sub-controller messages
    Sessions Controller – Sub-controller for user sessions
    Users Controller – Sub-controller for user creation and editing

To view the live development application on Heroku, please follow the link below.
https://cryptmessage.herokuapp.com

You can download a Github clone of the project over SSH using link below 
git@github.com:chidioffor/message_app_5.git

or download via HTTPS:
https://github.com/chidioffor/message_app_5.git


