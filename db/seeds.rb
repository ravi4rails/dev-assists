# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Admin.create(email: "admin@devassist.com", password: "111111")

skills = Skill.create([
  { name: "C" },
  { name: "HTML" },
  { name: "HAML" },
  { name: "Algorithms" },
  { name: "Ruby" },
  { name: "Rails" },
  { name: "Ruby on Rails" },
  { name: "PHP-Core" },
  { name: "PHP-Codigniter" },
  { name: "PHP-Laravel" },
  { name: "MySQL" },
  { name: "Postgresql" },
  { name: "JQuery" },
  { name: "JavaScript" },
  { name: "AngularJS" },
  { name: "Angular 2" },
  { name: "Angular 4" },
  { name: "Angular 5" },
  { name: "Angular 6" },
  { name: "Angular 7" },
  { name: "Bootstrap2" },
  { name: "Bootstrap3" },
  { name: "Bootstrap4" },
  { name: "ReactJs" },
  { name: "React Native" },
  { name: "Android" },
  { name: "C++" },
  { name: "Java" },
  { name: "Advanced Java" },
  { name: "Github" },
  { name: "Heroku" },
  { name: "AWS" },
  { name: "Degital Ocean" },
  { name: "MySQL Server Administration" },
  { name: "Material Design" },
  { name: "Magento" },
  { name: "Wordpress" },
  { name: "Joomla" },
  { name: "Python" },
  { name: "Django" },
  { name: ".NET" },
  { name: "C#" },
  { name: "ASP.NET" },
  { name: "JSON" },
  { name: "CSS" },
  { name: "CSS3" },
  { name: "Hadoop" },
  { name: "Data Structures" },
  { name: "DBMS" },
  { name: "Sqoop" }
])