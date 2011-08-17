class ProductsController < InheritedResources::Base
  def render_select
    # render select box with products to be used in a new delivery creation
    @products = Product.all
    respond_to do |format|
      format.json { render :json => @products }
    end
  end
end