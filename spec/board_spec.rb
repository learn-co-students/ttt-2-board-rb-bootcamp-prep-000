require 'pry'

describe "lib/board.rb" do
  it 'defines a local variable `board`' do
    file_scope = binding
    file_scope.eval(File.read("./lib/board.rb"))
    board = file_scope.local_variable_get("board")

    expect(board).to_not be_nil
  end

  it '`board` is set to an array' do
    file_scope = binding
    file_scope.eval(File.read("./lib/board.rb"))
    board = file_scope.local_variable_get("board")

    expect(board).to be_a(Array)
  end

  it '`board` is an array with 9 elements' do
    file_scope = binding
    file_scope.eval(File.read("./lib/board.rb"))
    board = file_scope.local_variable_get("board")
  
    expect(board.size).to eq(9) 
  end
end