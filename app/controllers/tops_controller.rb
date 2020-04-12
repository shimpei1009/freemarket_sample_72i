class TopsController < ApplicationController

  def index
    @products = Product.all.limit(3).order("id DESC")
  end

  def new
    @products = Product.new
    @contents = ["マイページ","お知らせ","いいね一覧","出品する","出品した商品"]
  end

  def create
  end

  def show
    @product = Product.find(params[:id])
    @parents = Category.where(ancestry:nil)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product)
  end

end
