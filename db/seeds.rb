require 'faker'

User.destroy_all
Car.destroy_all

  User.create!(email: 'julia@gmail.com', password: 'azerty', first_name: 'Julia', last_name: 'Duwagon')
30.times do
  User.create!(email: Faker::Internet.email, password: Faker::Alphanumeric.alphanumeric(number: 10), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
puts 'users created'

address = ["12 Rue de Rivoli, Paris 1er Arrondissement, Île-de-France, France", "93 Rue des Lavandières, Pessac, Nouvelle-Aquitaine, France", "12 Rue André Lamande, Bordeaux, Nouvelle-Aquitaine, France", "74 Cours Victor Hugo, Bordeaux, Nouvelle-Aquitaine, France", "36 Rue Victor Hugo, Coudekerque-Branche, Hauts-de-France, France", "35 Rue des Amandiers, Martigues, Provence-Alpes-Côte d'Azur, France", "73 Rue René Descartes, Strasbourg, Grand-Est, France",
            "20 Rue des Rossignols, Mérignac, Nouvelle-Aquitaine, France", "20 Rue des Rossignols, Villeneuve-sur-Lot, Nouvelle-Aquitaine, France", "16 Allée Beauséjour, Brétigny-sur-Orge, Île-de-France, France", "Mairie de Tournefeuille, Tournefeuille, Occitanie, France", "29 Rue Georges Lenotre, Rambouillet, Île-de-France, France", "79 Avenue d'Armorique, Plaisir, Île-de-France, France", "7 Avenue d'Écully, Lyon 9e Arrondissement, Auvergne-Rhône-Alpes, France",
          "36 Avenue Voltaire, Maisons-Laffitte, Île-de-France, France", "18 Avenue Henri Vigneau, Mérignac, Nouvelle-Aquitaine, France", "25 Place du Jeu de Paume, Vienne, Auvergne-Rhône-Alpes, France", "16 Rue des Fleurs, Les Touches-de-Périgny, Nouvelle-Aquitaine, France", "22 Allée Blériot, Digne-les-Bains, Provence-Alpes-Côte d'Azur, France", "6 Rue de Strasbourg, Clermont-Ferrand, Auvergne-Rhône-Alpes, France",
        "22 Place Commerciale, Lanester, Bretagne, France", "23 Rue Arthur Dalide, Le Perreux-sur-Marne, Île-de-France, France", "63 Rue Raymond Poincaré, Nanterre, Île-de-France, France", "73 Rue Sadi Carnot, Aubervilliers, Île-de-France, France", "83 Place de la Gare, Cognac, Nouvelle-Aquitaine, France", "3 Avenue Aristide Briand, Le Bouscat, Nouvelle-Aquitaine, France", "55 Rue Albert Camus, Le Lamentin, Martinique, France",
      "20 Rue d'Orly, Rungis, Île-de-France, France", "26 Rue Alfred de Vigny, Mérignac, Nouvelle-Aquitaine, France", "74 Boulevard de Prague, Nîmes, Occitanie, France", "54 Rue Berthelot, Bègles, Nouvelle-Aquitaine, France", "77 r Place des Acacias, Champs-sur-Marne, Île-de-France, France", "65 Rue de Geneve, Alfortville, Île-de-France, France", "12 Rue de Pompeyrie, Agen, Nouvelle-Aquitaine, France", "22 Rue du Bocage, Blanquefort, Nouvelle-Aquitaine, France",
    "35 Rue Tournefort, Paris 5e Arrondissement, Île-de-France, France", "22 Rue de Marmande, Villeneuve-sur-Lot, Nouvelle-Aquitaine, France", "Lyon 2e Arrondissement, Lyon, Auvergne-Rhône-Alpes, France", "Rue de la Gare, Limoux, Occitanie, France", "36 Quai des Célestins, Paris 4e Arrondissement, Île-de-France, France", "Vieux-Port, Marseille, Provence-Alpes-Côte d'Azur, France" ]


# address = ['Paris', "Bordeaux", "COUDEKERQUE-BRANCHE", "MARTIGUES", "STRASBOURG", "Saint-Médard", "Coutras", "Pessac", "Pantin", "Toulouse",
#             "CHOLET", "GENNEVILLIERS", "BRÉTIGNY-SUR-ORGE", "TOURNEFEUILLE", "RAMBOUILLET", "PLAISIR", "LYON", "Blagnac", "Toulouse", "Tour Eiffel",
#           "MAISONS-LAFFITTE", "Mérignac", "PÉRIGUEUX", "DIGNE-LES-BAINS", "CLERMONT-FERRAND", "Rions", "langon",
#         "LANESTER", "LE PERREUX-SUR-MARNE", "6NANTES", "AUBERVILLIERS", "COGNAC", "LE BOUSCAT", "LE LAMENTIN",
#       "ORLY", "NÎMES", "Bègles", "CHAMPS-SUR-MARNE", "ALFORTVILLE", "POISSY" ]


#   number = rand(1..30)
# Car.create!(brand: Faker::Vehicle.make, model: Faker::Vehicle.model, year_of_production: Faker::Vehicle.year, price_per_day: Faker::Number.number(digits: 2), address: address[3], user_id: User.find(number).id)
x = 0

41.times do
  number = rand(1..30)
  Car.create!(brand: Faker::Vehicle.make, model: Faker::Vehicle.model, year_of_production: Faker::Vehicle.year, price_per_day: Faker::Number.number(digits: 2), address: address[x], user_id: User.find(number).id)
  x += 1
end

puts 'cars created'

# Car.create!(brand: Faker::Vehicle.make, model: Faker::Vehicle.model, year_of_production: Faker::Vehicle.year, price_per_day: Faker::Number.number(digits: 2), address: , user_id: 1)
