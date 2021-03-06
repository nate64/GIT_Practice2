#just copied some code here for fun

Git.display_cmd(gets.strip)

require 'colorize'
require_relative 'git'

@contacts = []

class Main
  include Git 

def menu
  puts "====================="
  puts "Contact List"
  puts "1) Add contact"
  puts "2) View all"
  puts "3) Exit"
  puts "====================="
  user_selection
end

def user_selection
  case gets.to_i
  when 1
    add_contact
  when 2
    view_all
  when 3
    puts "GOODBYE"
    exit
  else
    puts "Invalid selection\n\n"
    menu
  end
end

def info(type)
  puts "#{type}"
  result = gets.strip
  while result == ''
    puts "Please provide a value for #{type}"
    result = gets.strip
  end

  result
end

def add_contact
  first_name = info('First Name')
  last_name = info('Last Name')
  email = info('Email')
  @contacts << { first_name: first_name, last_name: last_name, email: email }
end

def view_all
  @contacts.each do |contact|
    puts "#{contact[:last_name]}, #{contact[:first_name]}\t #{contact[:email]}"
  end
end

while true
  menu
end

<<<<<<< HEAD
when 1
  puts 'Enter git command'.colorize(:green)
  Git.git_cmd(gets.strip)
=======
def self.menu
  puts 'MAIN MENU'.colorize(:cyan)
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: View git config'.colorize(:cyan)
  puts '3: Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'.colorize(:green)
    Git.puts_git(gets.strip)
  when 2
    Git.config
  when 3
    exit
  else
    puts 'Invalid choice'.colorize(:red)
  end

  menu
end
>>>>>>> messing_around_display git config
