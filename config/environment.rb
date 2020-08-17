require 'sqlite3'
require 'pry'

require_relative "../lib/student.rb" #student class is loaded unto this file

DB = {:conn => SQLite3::Database.new("db/students.db")
}#the database is loaded to this file, too