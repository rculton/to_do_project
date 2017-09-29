# README for Task-lite

Link to app on Heroku: https://gentle-woodland-53740.herokuapp.com/

## Technology Used

### Ruby on Rails

This was used to do all the website navigation, forms, database management, and any neccesary logic decisions.

#### Extra Gems
[FontAwesome](https://github.com/FortAwesome/font-awesome-sass)


### Bootstrap

This CSS tool was used for the styling. It's allowed me to create a more user-friendly UI.


### Why so few technologies?

One of my personal goals for this project was to accomplish as much as I could using only these tools, so I could improve my skill with them. I have future plans to add more technologies to this project as time goes on.


## Approach Taken

### Phase 1: Papers Please!

I started the project by modeling all of my data by hand in a notebook. I did my ERDs and Wireframes on paper, along with my user stories and my routes. This helped me to define a clear idea of where I wanted to go in the project, and in what order I would build everything.

### Phase 2: Hard Cold Code

The second part of this project was translating everything I had on paper into functional code. With a clear design path, and easily accessable references for my data models, I was able to put together a functional, but ugly, product.

First I put together the basic database with one user, one list, and one task. Then I created a way to view the user, the list, and the task. Then I added a way to create a new user, a new list, and a new task. Then editing the user, the list, and the task. I then jumped to putting together a sessions controller to allow for logging in and out of the app, before finally implementing a way to delete tasks, then lists, then users (which relied on a log-out like function to end sessions)

### Phase 3: Pulling My Project Up By Bootstraps

I went back to each of my views and began adding the bootstrap syntax to make everything more appealing and a bit formatted. Admittedly one of my own weaknesses is in visual design, so I opted for a minimalistic design using a black and grey color scheme. The only thing with color are the buttons, which are color coded in the hopes that it's easier to see it and know what it does without ever having to read it. 


## How to Install the Project

### Requirements

This app requires postgresql to use locally. (Installation tutorials [here](http://postgresguide.com/setup/install.html)) 

This app also requires rails. (Installation tutorial [here](http://installrails.com/))

Clone the project. (Cloning instructions [here](https://help.github.com/articles/cloning-a-repository/))

### Installation Instructions

 1. Run this in the console

	```
	$ rake db:create
	$ rake db:migrate
	```
	Optionally, you can try `rake db:schema:load`, however some users have reported issues with this command.


2. In the console, start the rails server  

	```
	$rails server
	```

3.  Visit localhost:3000 in your preferred web prowser


From here you can create an account, which will save into your local database. You can then use the app normally



Unsolved Problems, Next Steps, and Planned Features

1. Implementing Javascript to add buttons within the list to mark tasks as priority, or as completed
2. Adding a button in the list, next to each task, to edit the task
3. Change functionality of tasks to load their details within the list itself when clicked. This will be accomplished using a combination of Rails and Bootstrap
4. Implementing a model for a shopping list. List items will have a money value, and a total will be displayed at the bottom of the list
5. Making lists private or public, so users can choose to show them to others.


## Trello

[Trello for this application (includes ERD and Wireframes)](https://trello.com/b/7PYGczdR/to-do-application)

#### Contact Me:
If you notice anything wrong with the project, installation instructions, or anything, and you want to reach out, you can reach me at [rculton@gmail.com](mailto:rculton@gmail.com)
