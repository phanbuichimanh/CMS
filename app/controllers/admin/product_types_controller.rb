class Admin::ProductTypesController < ApplicationController
  before_action :set_product_type, only:[:show, :edit, :update, :destroy]

  def index
    @product_types = ProductType.all
  end

  def show
    @product_type = ProductType.includes(:category).where(id: params[:id]).first
  end

  def new
    @product_type = ProductType.new
    @categories = Category.all
  end

  def create
      @product_type = ProductType.new(product_type_params)
      if @product_type.save
        redirect_to [:admin, @product_type], notice: 'Product_type was create successfully!!'
      else
        @categories = Category.all
        render :new
      end
      
  end

  def edit
  end

  def update
    @product_type = ProductType.update(product_type_params)
  end

  def destroy
    if @product_type = ProductType.destroy
       redirect_to admin_product_types_path, notice: 'product_type was sucscessfully destroy!!'
    end
  end

  
  private

  def set_product_type
     @product_type = ProductType.find(params[:id])
  end

  def product_type_params
     params.require(:product_type).permit(:category_id, :name, :is_active)
  end

end
