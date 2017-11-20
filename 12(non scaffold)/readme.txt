
Steps to execute Ruby and rails program in any version of Instant Rails Software
---------------------------------------------------------------------------------
step1> Open InstantRails 
step2> Click on the I icon -> Rails application -> ManageRailsApplication->CreateNewRailsApp
step3>In the command Prompt 
  
    1> C:\InstantRails\rails_apps>rails appname   //appname can be anything
    2> C:\InstantRails\rails_apps>cd appname
     
     //Create controller
     
    3> C:\InstantRails\rails_apps\appname>ruby script/generate controller Book
     
     //Create Model
    
    4> C:\InstantRails\rails_apps\appname>ruby script/generate model Book
     
     //goto -> appname\db\migrate\001_create_books.rb 
     (you can use dir/p to print all the directories and cd to change directories)

    5> C:\InstantRails\rails_apps\appname\db\migrate>edit 001_create_books.rb

     //Type in the following
        t.column :accno,:string
        t.column :title,:string
        .
        .
        .
     //save and exit 
     
     //create the database in mysql by first going to mysql by typing the following in prompt
        
    6> C:\InstantRails\rails_apps\appname\mysql -u root
      mysql> create database appname_development;        // (yourapplicationname)_development
      mysql> exit
  
     //Now use the rake command to create the table 
 
    7> C:\InstantRails\rails_apps\appname\rake db:migrate

     //Now go to app\controllers\book_controller.rb
    
    8> C:\InstantRails\rails_apps\appname\app\controllers>edit book_controller.rb    
    
     Add sent book_controller.rb code and save

    9> 
       C:\InstantRails\rails_apps\appname\app\views\book>edit create.rhtml    (and type in the code)
      
       C:\InstantRails\rails_apps\appname\app\views\book>edit search.rhtml   (and type in the code)
     
       C:\InstantRails\rails_apps\appname\app\views\book>edit list.rhtml     (and type in the code)
     
       C:\InstantRails\rails_apps\appname\app\views\book>edit result.rhtml    (and type in the code)

  
step4> Now from InstanRails select your appname ->start with mogrel
step5> In the browser type in the url -> localhost:3000/book/create    (to enter the data into the database)
                                     localhost:3000/book/search (to search )






