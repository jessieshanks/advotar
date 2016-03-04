class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to squads_path
    end
  end
end
