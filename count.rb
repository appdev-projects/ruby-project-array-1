# Ask the user to enter at least 2 numbers and store their input.                                                                          
# The starting code below does this for you.                                                                                               
# Use the `count` method to prtin how many numbers the user entered.                                                                       #                                                                                                                                          
#
# Expected output (with input "42 5 3 8"):                                                                                                                         
#
#   "Enter at least 2 numbers, separated by spaces:"                                                                                       
#   42 5 3 8 # user's input                                                                                                                
#   4 

p "Enter at least 2 numbers, separated by spaces:"

user_string = gets.chomp

user_numbers = user_string.split


# ~~~~~ Specs (make it do these things) ~~~~~
#
# count.rb should output '2' given the input '2 9' 
#
# count.rb should output '9' given the input '9 12 8 25 16 78 64 0 27' 
#
# count.rb should output '5' given the input '9 80 17 28 36' 
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
