
desc 'require environment'
task :environment do
  require_relative './config/environment'
end

namespace :db do
  
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end
  
  desc 'requires seed file'
  task :seed do
    require_relative './db/seeds'
  end
end


desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end


desc 'outputs hello to the terminal'
namespace :greeting do
  task :hello do
    puts 'hello from Rake!'
  end

  desc 'outputs hola to the terminal'
  task :hola do
    puts 'hola de Rake!'
  end
end