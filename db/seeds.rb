# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([
  {title: "Nakanek", 
   description: "Nakanek Syrian food. Notre projet a pour objectif d'être un projet socioprofesionnel pour les réfugiés. Nous vous proposons une cuisine syrienne, aussi raffinnée que saine, issue de l'agriculture biologique",
   image: "project_nakanek.jpg"
  }, 
  {title: "Atelier couture", 
   description: "Le projet couture a pour objectif de permettre l'intégration des réfugiés par le biais de la couture. Nous avons développé une association avec un atelier couture qui prendra sous ailes des réfugié.e.s afin de les faire entrer dans le monde du travail",
   image: "project_couture.jpg"
  },
  {title: "Web developer", 
   description: "Le projet web developer a pour objectif de permettre l'intégration des réfugiés par le biais de la couture. A travers ce project nous voulons donner l'opportunité aux réfugiés d'évoluer et d'apprendre de nouvelles compétences qui sont vivement recherchées en Belgique, à travers le developement web",
   image: "project_it.jpg"
  }
])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?