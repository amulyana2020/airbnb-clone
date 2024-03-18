class PagesController < ApplicationController 
    def home
        @properties = Property.all
    end

    def about
    end
end
