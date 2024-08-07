class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    # render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST 
  def create 
    product = Product.new(product_params)

    product.save!

    render json: product
  end

  def update
    @product.name = product_params['name']
    @product.description = product_params['description']
    @product.price = product_params['price']

    @product.save!
  end

  def destroy
    @product.destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
