require 'faker'

User.destroy_all
Car.destroy_all

  User.create!(email: 'julia@gmail.com', password: 'azerty', first_name: 'Julia', last_name: 'Duwagon')
30.times do
  User.create!(email: Faker::Internet.email, password: Faker::Alphanumeric.alphanumeric(number: 10), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
puts 'users created'

# address = ['16 Villa Gaudelet, Paris', "93 avenue de l'Amandier, Bordeaux", "68 avenue de l'Amandier, Bordeaux", "74 cours Jean Jaures, Bordeaux", "36 rue Victor Hugo, COUDEKERQUE-BRANCHE", "35 Quai des Belges, MARTIGUES", "73 rue Descartes, STRASBOURG",
#             "92 rue Ernest Renan, CHOLET", "27 rue Saint Germain, GENNEVILLIERS", "16 rue Grande Fusterie, BRÉTIGNY-SUR-ORGE", "72 quai Saint-Nicolas, TOURNEFEUILLE", "29 rue Lenotre, RAMBOUILLET", "79 rue de la Boétie, PLAISIR", "78 rue Banaudon, LYON",
#           "36 avenue Voltaire, MAISONS-LAFFITTE", "18 avenue Henri Vigneau, Mérignac", "25 Place du Jeu de Paume, VIENNE", "16 rue Clement Marot, PÉRIGUEUX", "22 rue des lieutemants Thomazo, DIGNE-LES-BAINS", "6 Rue de Strasbourg, CLERMONT-FERRAND",
#         "22 Place Napoléon, LANESTER", "23 rue Goya, LE PERREUX-SUR-MARNE", "63 rue de Raymond Poincaré, NANTES", "73 rue Sadi Carnot, AUBERVILLIERS", "83 Place de la Gare, COGNAC", "3 boulevard Aristide Briand, LE BOUSCAT", "55 rue Michel Ange, LE LAMENTIN",
#       "20 boulevard Amiral Courbet, ORLY", "26 rue Reine Elisabeth, MÉRIGNAC", "74 boulevard de Prague, NÎMES", "54 rue Berthelot, Bègles", "77 place Maurice-Charretier, CHAMPS-SUR-MARNE", "65 rue de Geneve, ALFORTVILLE", "84 rue de la Boétie, POISSY" ]


address = ['Paris', "Bordeaux", "COUDEKERQUE-BRANCHE", "MARTIGUES", "STRASBOURG", "Saint-Médard", "Coutras", "Pessac", "Pantin", "Toulouse",
            "CHOLET", "GENNEVILLIERS", "BRÉTIGNY-SUR-ORGE", "TOURNEFEUILLE", "RAMBOUILLET", "PLAISIR", "LYON", "Blagnac", "Toulouse", "Tour Eiffel",
          "MAISONS-LAFFITTE", "Mérignac", "PÉRIGUEUX", "DIGNE-LES-BAINS", "CLERMONT-FERRAND", "Rions", "langon",
        "LANESTER", "LE PERREUX-SUR-MARNE", "6NANTES", "AUBERVILLIERS", "COGNAC", "LE BOUSCAT", "LE LAMENTIN",
      "ORLY", "NÎMES", "Bègles", "CHAMPS-SUR-MARNE", "ALFORTVILLE", "POISSY" ]

# number = rand(1..30)
# Car.create!(brand: Faker::Vehicle.make, model: Faker::Vehicle.model, year_of_production: Faker::Vehicle.year, price_per_day: Faker::Number.number(digits: 2), address: address.sample, user_id: User.find(number).id)

x = 0

40.times do
  number = rand(1..30)
  Car.create!(brand: Faker::Vehicle.make, model: Faker::Vehicle.model, year_of_production: Faker::Vehicle.year, price_per_day: Faker::Number.number(digits: 2), address: address[x], user_id: User.find(number).id)
  x += 1
end

puts 'cars created'
