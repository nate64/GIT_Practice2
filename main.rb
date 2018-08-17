#just copied some code here for fun

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