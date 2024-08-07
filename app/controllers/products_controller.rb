class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy, :edit]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
    @product
  end

  # POST 
  def create 
    product = Product.new(product_params)

    product.save!

    redirect_to products_path
  end

  def update
    @product.name = product_params['name']
    @product.description = product_params['description']
    @product.price = product_params['price']

    @product.save!
    redirect_to products_path
  end

  def edit
  end

  def destroy
    @product.destroy

    redirect_to products_path
  end

  def new
    @product = Product.new
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
