class PagesController < ApplicationController
    def home
        #redirect_to articles_path if logged_in?
        @newEarlySignUp = EarlySignup.new
    end
end

