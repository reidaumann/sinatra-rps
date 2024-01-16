require "sinatra"
require "sinatra/reloader"

moves = ["rock", "paper", "scissors"]
get("/"){
  
  erb(:homepage)
}
get("/rock"){
  @my_move = "rock"
  @comp_move = moves.sample

  if @comp_move == @my_move
      @result = "tied"
  elsif @comp_move == "paper"
      @result = "lost"
  else
      @result = "won"
  end
  erb(:rock)
}
get("/paper"){
  @my_move = "paper"
  @comp_move = moves.sample

  if @comp_move == @my_move
    @result = "tied"
  elsif @comp_move == "scissors"
    @result = "lost"
  else
      @result = "won"
  end
erb(:paper)
}
get("/scissors"){
  @my_move = "scissors"
  @comp_move = moves.sample

  if @comp_move == @my_move
    @result = "tied"
  elsif @comp_move == "rock"
      @result = "lost"
  else
      @result = "won"
  end
  erb(:scissors)
}
