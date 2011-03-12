class CsvController < ApplicationController
  def import
  end
  
  def upload
  	render :text => params.to_json
  end

end
