class CsvController < ApplicationController

  def import
  end
  
  def upload
  	table = ImportTable.new :original_path => params[:upload][:csv].original_filename
  	row_count = 0 # per sapere il numero di righe
    row_index = 0
    uploaded_file = params[:upload][:csv].read
    FasterCSV.parse(uploaded_file) do |cells|
    	row_count += 1
    	logger.debug cells
    	logger.debug row_count # a quale riga è arrivato
      column_index = 0
      cells.each do |cell|
        table.import_cells.build :column_index => column_index, :row_index => row_index, :contents => cell
        column_index += 1
      end
      row_index += 1
    end
    table.save
    redirect_to import_table_path(table)
  end
    
end
