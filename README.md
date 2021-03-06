# **Find My Wod - API** 
# Final Capstone Project.
 
This is a solo project at the end of the Microverse Main Technical Curriculum. It's a real-world-like project, built with business specifications to improve and test the achievement of technical and soft skills gained during the program. The technical requirements of this API project are:

1. The database should have at least 2 tables
2. Use Postgres as your database
3. Back-end you will use Ruby on Rails
4. Create a REST API to manage database resources
 
## **Built With**
 
- Ruby on Rails
- JWT
- Heroku
 
## **How To Use**
 
### **Structure**

This application is the back-end API  used with the project [Find My Wod - Front-End](https://github.com/carlosveigadev/find-my-wod-frontend)

The tables created are related according to the following diagram:

<p align="center">
 <img src="fmw-diagram.png" alt="Tables Diagram"/>
</p>


### **Endpoints of API**

| Endpoint                              | Functionality             |
| ---                                   |  ---:                     | 
| POST /users/new                       | Create Users              | 
| POST /authentication                  | Log In Users              | 
| GET  /api/v1/wods                     | Get all Wods              | 
| GET  /api/v1/wods/:id                 | Get all Specific Wod      | 
| GET  /api/v1/favourites               | Get all Favourited Wods   |
| POST /api/v1/favourites               | Add Wod to Favourites     | 
| DELETE /api/v1/favourites/:id         | Remove Wod from favourites|

## **Deployed At:**
 
[Heroku](https://find-my-wod-api.herokuapp.com/)
 
 
## **Getting Started**
 
Clone the repository by clicking on "Clone or Download" and copy the given link. In your terminal, go to the folder where you want the project to be and use the following command:
 
`git clone https://github.com/carlosveigadev/find-my-wod-backend.git`
 
After that, open the folder with the code editor of your choice and follow the steps below.
 
## **Setting up the necessary packages:**
 
**Make sure you have [Yarn](https://yarnpkg.com/) installed in your machine.**
 
**Open the terminal and go to the folder of the game and run the following commands:** <br>
`yarn install`

`bundle install`
 
**Those commands will ensure you installed the proper packages required and install all the gems needed for the project.**
 
## **Configure the Database**
**You need to configure the database with the following commands:** <br>
`rails db:create db:migrate db:seed` <br>

**This command will create the database, migrate the tables as necessary, and populate it with some data.**

**If you have any problem configuring postgresql, check this [docs](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04) for more info**

## **Starting the Server**
**To start the server run:** <br>
`rails s -p 3001`

**This command will make sure you run the project at the 3001 port, so you don't have any conflict with the front-end port, which is usually 3000.**

## **Testing**
**To check the test run the following command:** <br>
`bundle exec rspec`

 
## **Author**
 
???? **Carlos Veiga**
 
- [Github](https://github.com/wrakc)
- [Twitter](https://twitter.com/carlosveig)
- [Linkedin](https://linkedin.com/chveiga)
 
## ???? **Contributing**
 
Contributions, issues, and feature requests are welcome!
 
Feel free to check the [issues page](https://github.com/carlosveigadev/find-my-wod-backend/issues).
 
## **Show your support**
 
Give a ?????? if you like this project!
 
## **Acknowledgments**
 
- Microverse for the opportunity;
- The Minskins for the support.
 
## ???? **License**
 
This project is [MIT](LICENSE) licensed.
 




