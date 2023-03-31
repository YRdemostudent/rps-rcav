class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def play_rock
    #write a ton of code
    #render or redirect
    #redirect_to("http://www.wikipedia.org")
    render({:template => "game_templates/user_rock.html.erb"})
  end
end
