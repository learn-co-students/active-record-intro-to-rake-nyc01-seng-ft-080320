namespace :greeting do 
  desc "prints out hello to the screen"
  task :hello do
    puts "hello from Rake!"
  end
  desc "prints out hola to the screen"
  task :hola do
    puts "hola de Rake!"
  end
end

task :environment do 
  require_relative "./config/environment"
end

namespace :db do
  desc "migrate changes to your database"
  task :migrate => :environment do
    Student.create_table
  end
  desc "seed the database with some dummy data"
  task :seed do
    require_relative "./db/seeds.rb"
  end
end
desc "drop into the Pry console"
task :console => :environment do
  Pry.start
end

