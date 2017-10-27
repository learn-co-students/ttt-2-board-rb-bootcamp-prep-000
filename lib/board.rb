# Define the variable board below.

=begin
Define a local variable in lib/board.rb called board
Set the board local variable equal to an array.
Fill the board array with 9 strings containing a single space: " ".
Run learn and read output and fix any errors.
Submit your solution with learn submit.
=end

board = Array.new
$i = 0
until $i == 9 do
  board.push(" ")
  $i +=1
end
puts board.inspect
