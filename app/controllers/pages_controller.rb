class PagesController < ApplicationController
    def index
        @pages = Page.all # to load all Page records from the database
    end
end