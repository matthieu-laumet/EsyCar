class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # BRAND = ["toyota", "ford", "renault", "peugeot", "audi", "volkswagen", "dacia", "nissan", "citroen", "opel"]

  validates :brand, presence: true
  # validates :brand, inclusion: { in: BRAND }
  validates :model, presence: true
  validates :address, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_adresse,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  # BRANDS = ["Toyota", "Ford", "Renault", "Peugeot", "Audi", "Volkswagen", "Dacia", "Nissan", "Citroen", "Opel", "Seat"].sort

  MODELS = ["Auris", "Avensis", "Aygo", "C-HR", "Camry", "Corolla", "Cruiser", "Prius", "Proace", "Rav4", "Yaris",
            "Fiesta", "Focus", "Kuga", "Mustang", "Puma", "Ranger", "Transit",
            "Arkana", "Captur", "Clio", "Espace", "Kadjar", "Kangoo", "Koleos", "Megane", "Twingo", "Zoe",
            "108", "2008", "208", "3008", "301", "308", "5008", "508", "Partner",
            "A1", "A3", "A4", "A5", "E-Tron", "Q3", "Q5", "Q7", "R8",
            "Arteon", "Golf", "Polo", "T-cross", "T-Roc", "Touareg", "Touran",
            "Duster", "Jogger", "Logan", "Sandero",
            "Ariya", "Juke", "Micra", "Qashqai", "X-Trail",
            "Ami", "Berlingo", "C1", "C3", "C4", "Jumper",
            "Astra", "Corsa", "Insignia", "Mokka"]

  BRANDS_MODELS = {"Toyota" => ["Auris", "Avensis", "Aygo", "C-HR", "Camry", "Corolla", "Cruiser", "Prius", "Proace", "Rav4", "Yaris"],
                "Ford" => ["Fiesta", "Focus", "Kuga", "Mustang", "Puma", "Ranger", "Transit"],
                "Renault" => ["Arkana", "Captur", "Clio", "Espace", "Kadjar", "Kangoo", "Koleos", "Megane", "Twingo", "Zoe"],
                "Peugeot" => ["108", "2008", "208", "3008", "301", "308", "5008", "508", "Partner"],
                "Audi" => ["A1", "A3", "A4", "A5", "E-Tron", "Q3", "Q5", "Q7", "R8"],
                "Volkswagen" => ["Arteon", "Golf", "Polo", "T-Cross", "T-Roc", "Touareg", "Touran"],
                "Dacia" => ["Duster", "Jogger", "Logan", "Sandero"],
                "Nissan" => ["Ariya", "Juke", "Micra", "Qashqai", "X-Trail"],
                "Citroen" => ["Ami", "Berlingo", "C1", "C3", "C4", "Jumper"],
                "Opel" => ["Astra", "Corsa", "Insignia", "Mokka"],
                "Seat" => ["Arona", "Ateca", "Ibiza", "Leon", "Tarraco"]
              }


end
