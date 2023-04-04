class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  
  def homepage
    render({:template => "game_templates/rules.html.erb"})
  end 

  def play_rock
    #write a ton of code
    #render or redirect
    #redirect_to("http://www.wikipedia.org")
    render({:template => "game_templates/user_rock.html.erb"})
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample
    
if @comp_move == "rock"
  @outcome = "tied"
elsif @comp_move == "paper"
  @outcome = "lost"
elsif @comp_move == "scissors"
  @outcome = "won"
end

  render({:template => "game_templates/user_paper.html.erb"})
  end 

  def play_scissors 

    render({:template => "game_templates/user_scissors.html.erb"})
  end 
end 
