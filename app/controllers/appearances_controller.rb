class AppearanesController < ApplicationController
    def new
        @episode= Epidode.all
        @apperanes = Apperanes.all
    end 
end
