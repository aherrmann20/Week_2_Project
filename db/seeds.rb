# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Loading drugs..."

Drug.delete_all

Drug.create! name: "Aspirin (ASA)", adult_dose: "324 mg", pediatric_dose: "n/a", route: "oral (chewed)", indications: "chest pain"
Drug.create! name: "Narcan", adult_dose: "2 mg", pediatric_dose: "n/a", route: "nasal spray (1mg per nostril)", indications: "under the influence of narcotics"
Drug.create! name: "Nitroglycerin", adult_dose: "0.4 mg", pediatric_dose: "n/a", route: "assisted sublingual tablet or spray", indications: "chest pain, prescription"
Drug.create! name: "Oxygen", adult_dose: "2 - 15 lpm", pediatric_dose: "2 - 15 lpm", route: "nasal cannula, nonrebreather", indications: "respiratory or circulatory distress"
Drug.create! name: "Albuterol", adult_dose: "2.5 mg every 4-6 hours, or measured puffs as prescribed", pediatric_dose: "2.5 mg every 4-6 hours, or measured puffs as prescribed", route: "nebulizer or measured dose inhaler", indications: "asthma attack, prescription"
Drug.create! name: "Epinephrine", adult_dose: "0.3 mg", pediatric_dose: "0.15 mg", route: "IM injector", indications: "anaphylactic shock, severe allergic reaction"