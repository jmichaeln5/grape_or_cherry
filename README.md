# Documentation

* 1) Created empty PostGreSQL Database


* 2) Generated controllers/views, supporting all views and have access to DB


* 3) Set root_path to 'pages#welcome'
-app/config/routes


* 4) Added Devise to manage session state & login


* 5) Created User table 


* 6) DB migration


* 7) Generated Views for Devise 


* 8) Create Flavors Model (DB Table)


* 8) Create Flavors Controller
-app/controllers/flavors_controller.rb


* 9) Create Flavors Views
-app/views/flavors


* 10) Create index, show, new, edit, create, update, destroy methods
-app/controllers/flavors_controller.rb


* 11) Define flavor_params
-app/controllers/flavors_controller.rb


* 12) Create form file
-app/views/flavors/_form.html.erb


* 13) Render Flavor form file in index, edit, new, and show action 
-app/views/flavors


* Rails DB Migrate & Bounce Server 
* Style Pages


* 14) Add build method on current_user so each time a new instance of Flavor class is created it belongs to a user
-app/controllers/flavors_controller.rb


* 15) Add db associations on Flavor & User Model (foreign_key)
-app/models/flavor.rb && app/models/user.rb


* 16) Make Flavors dependent on User to eliminate orphaned data and ensure it's deleted if User is deleted
-app/models/user.rb


* 17) DB migration 


* 18) Bounce Server


* 19) Create Pages controller
-app/controllers/pages_controller.rb


* 20) Create Home, Cherry, and Grape views
-app/controllers/pages_controller.rb


* 21) Create Home, Cherry, and Grape methods to allow creation of views
-app/controllers/pages_controller.rb


* 22) Define new class instances in Pages controller to make new isntances of Vote class accessible to voting views
-app/controllers/pages_controller.rb


* 23) git add/commit/push to heroku master
