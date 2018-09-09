require 'faker'

namespace :db do
  desc 'Populate database'
  task :populate => :environment do
    15.times do |n|
      User.create(name: Faker::Name.name)
      Myki.create(number: Faker::Number.number(10), user_id: n)
      Passport.create(number: Faker::Number.number(10), user_id: n)
    end
  end
end