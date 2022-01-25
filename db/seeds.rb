require 'faker'

User.destroy_all
Car.destroy_all

  User.create!(email: 'julia@gmail.com', password: 'azerty', first_name: 'Julia', last_name: 'Duwagon', admin: true)
  User.create!(email: 'matt@gmail.com', password: 'azerty', first_name: 'Matthieu', last_name: 'Laumet', admin: false)

30.times do
  new_user = User.new(email: Faker::Internet.email, password: Faker::Alphanumeric.alphanumeric(number: 10), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  new_user.email = "#{new_user.first_name}.#{new_user.last_name}@gmail.com"
  new_user.save!
  print "#"
end

puts 'Users created'

address = ["12 Rue de Rivoli, Paris 1er Arrondissement, Île-de-France, France", "93 Rue des Lavandières, Pessac, Nouvelle-Aquitaine, France", "12 Rue André Lamande, Bordeaux, Nouvelle-Aquitaine, France", "74 Cours Victor Hugo, Bordeaux, Nouvelle-Aquitaine, France", "36 Rue Victor Hugo, Coudekerque-Branche, Hauts-de-France, France", "35 Rue des Amandiers, Martigues, Provence-Alpes-Côte d'Azur, France", "73 Rue René Descartes, Strasbourg, Grand-Est, France",
  "20 Rue des Rossignols, Mérignac, Nouvelle-Aquitaine, France", "20 Rue des Rossignols, Villeneuve-sur-Lot, Nouvelle-Aquitaine, France", "16 Allée Beauséjour, Brétigny-sur-Orge, Île-de-France, France", "Mairie de Tournefeuille, Tournefeuille, Occitanie, France", "29 Rue Georges Lenotre, Rambouillet, Île-de-France, France", "79 Avenue d'Armorique, Plaisir, Île-de-France, France", "7 Avenue d'Écully, Lyon 9e Arrondissement, Auvergne-Rhône-Alpes, France",
  "36 Avenue Voltaire, Maisons-Laffitte, Île-de-France, France", "18 Avenue Henri Vigneau, Mérignac, Nouvelle-Aquitaine, France", "25 Place du Jeu de Paume, Vienne, Auvergne-Rhône-Alpes, France", "16 Rue des Fleurs, Les Touches-de-Périgny, Nouvelle-Aquitaine, France", "22 Allée Blériot, Digne-les-Bains, Provence-Alpes-Côte d'Azur, France", "6 Rue de Strasbourg, Clermont-Ferrand, Auvergne-Rhône-Alpes, France",
  "22 Place Commerciale, Lanester, Bretagne, France", "23 Rue Arthur Dalide, Le Perreux-sur-Marne, Île-de-France, France", "63 Rue Raymond Poincaré, Nanterre, Île-de-France, France", "73 Rue Sadi Carnot, Aubervilliers, Île-de-France, France", "83 Place de la Gare, Cognac, Nouvelle-Aquitaine, France", "3 Avenue Aristide Briand, Le Bouscat, Nouvelle-Aquitaine, France", "55 Rue Albert Camus, Le Lamentin, Martinique, France",
  "20 Rue d'Orly, Rungis, Île-de-France, France", "26 Rue Alfred de Vigny, Mérignac, Nouvelle-Aquitaine, France", "74 Boulevard de Prague, Nîmes, Occitanie, France", "54 Rue Berthelot, Bègles, Nouvelle-Aquitaine, France", "77 r Place des Acacias, Champs-sur-Marne, Île-de-France, France", "65 Rue de Geneve, Alfortville, Île-de-France, France", "12 Rue de Pompeyrie, Agen, Nouvelle-Aquitaine, France", "22 Rue du Bocage, Blanquefort, Nouvelle-Aquitaine, France",
  "35 Rue Tournefort, Paris 5e Arrondissement, Île-de-France, France", "22 Rue de Marmande, Villeneuve-sur-Lot, Nouvelle-Aquitaine, France", "Lyon 2e Arrondissement, Lyon, Auvergne-Rhône-Alpes, France", "Rue de la Gare, Limoux, Occitanie, France", "36 Quai des Célestins, Paris 4e Arrondissement, Île-de-France, France", "Vieux-Port, Marseille, Provence-Alpes-Côte d'Azur, France" ]

  x = 0

41.times do
  toyota = %w(Auris Avensis Aygo C-HR Camry Corolla Prius Rav4 Yaris).sample
  ford = %w(Fiesta Focus Kuga Mustang Ranger Transit).sample
  renault = %w(Arkana Captur Clio Espace Kadjar Kangoo Koleos Megane Twingo Zoe).sample
  peugeot = %w(108 2008 208 3008 301 308 5008 508 Partner).sample
  audi = %w(A1 A3 A4 A5 E-tron Q3 Q5 Q7 R8).sample
  volkswagen = %w(Arteon Golf Polo T-Cross T-Roc Touareg Touran).sample
  dacia = %w(Duster Logan Sandero).sample
  nissan = %w(Ariya Juke Micra Qashqai X-Trail).sample
  citroen = %w(Ami Berlingo C1 C3 C4 Jumper).sample
  opel = %w(Astra Corsa Insignia Mokka).sample
  seat = %w(Arona Ateca Ibiza Leon Tarraco).sample

  association = { "toyota" => toyota, "ford" => ford, "renault" => renault, "peugeot" => peugeot, "audi" => audi, "volkswagen" => volkswagen,
                  "dacia" => dacia, "nissan" => nissan, "citroen" => citroen, "opel" => opel, "seat" => seat }
  hasard_brand = ["toyota", "ford", "renault", "peugeot", "audi", "volkswagen", "dacia", "nissan", "citroen", "opel", "seat"].sample

  select_car = association.select do |brand, model|
    brand == hasard_brand
  end

  number = rand(1..30)

  new_car = Car.create!(
    brand: select_car.keys.first.tr('"', '').capitalize,
    model: select_car.values.first.tr('"', ''),
    year_of_production: Faker::Vehicle.year,
    price_per_day: Faker::Number.number(digits: 2),
    address: address[x],
    user_id: User.find(number).id)

  new_car.photo.attach(io: File.open(Rails.root.join("app/assets/images/cars/#{select_car.keys.first.tr('"', '')}_#{select_car.values.first.tr('"', '')}.jpg")),
                  filename: "#{select_car.keys.first.tr('"', '')}_#{select_car.values.first.tr('"', '')}.jpg")

  print "#"
  x += 1
end

puts 'cars created'
