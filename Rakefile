#with namespace at the the top, these tasks are now called as:
#rake greeting:hello
#rake greeting:hola
namespace :greeting do #namespace these two rake tasks under the heading :greeting
desc 'outputs hello to the terminal' #description is needed to register w/ rake -T
task :hello do #task is called :hello, and called as: rake hello
  puts "hello from Rake!"
end

desc 'outputs hola to the terminal'
task :hola do #rake hola
  puts "hola de Rake!"
end
end

desc 'gives this file access to eviornment.rb file and its access to files within it'
task :environment do 
  require_relative './config/evironment'
end

namespace :db do 
  task :environment do#:environment is necessary for rake db:migrate to work. this task runs before :migrate does, or is run first whenever some program that is dependent on it is called 
    require_relative './config/environment'
  end 
  desc 'migrates changes to database'#'migrate' is a naming convention. one "migrates" a database by applying SQL statements which alter that database. 
  task :migrate => :environment do #TASK DEPENDENCY: this method is only accessible by link this file to ./lib/student.rb. thus, this task is dependent on :enviornment to be a task that is defined and directs one to student.rb in someway. thus, :environment
    Student.create_table
  end
  desc 'seeds the database with data from a require_relative file defined'
  task :seed do #rake db:seed must be run AFTER rake db:migrate, since a database table must be existant in the first place for :seed to populate it with data. 
    require_relative './db/seeds.rb'
  end
  desc 'drop into the pry console'
  task :console => :environment do
    #once again, this task is dependent on :enviornment runnning.
      Pry.start
    end 
end


