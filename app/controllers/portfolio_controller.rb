class PortfolioController < ApplicationController

  def index
      require "./app/models/work"
      @works = Work.import_csv
  end
  
end
