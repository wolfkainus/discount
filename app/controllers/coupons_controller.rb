class CouponsController < ApplicationController

  load_and_authorize_resource

  #before_action :set_coupon, only: [:show, :edit, :update, :destroy, :coupon_categories]

  # GET /coupons
  # GET /coupons.json
  def index
    @coupons = Coupon.all
  end

  # GET /coupons/1
  # GET /coupons/1.json
  def show
    @coupons
    @categories = Category.all
    @coupon_categories = @coupon.categories
  end

  # GET /coupons/new
  def new
    @coupon = Coupon.new
    @categories = Category.all
    @coupon_categories = @coupon.categories
  end

  # GET /coupons/1/edit
  def edit
    @categories = Category.all
    @coupon_categories = @coupon.categories
  end

  # POST /coupons
  # POST /coupons.json
  def create
  #  @coupon = Coupon.new(coupon_params)


    @user = current_user if user_signed_in?
    @coupon = @user.coupons.build(coupon_params)

    respond_to do |format|
      if @coupon.save
        format.html { redirect_to @coupon, notice: 'Coupon was successfully created.' }
        format.json { render :show, status: :created, location: @coupon }
      else
        format.html { render :new }
        format.json { render json: @coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coupons/1
  # PATCH/PUT /coupons/1.json
  def update
    respond_to do |format|
      if @coupon.update(coupon_params)
        format.html { redirect_to @coupon, notice: 'Coupon was successfully updated.' }
        format.json { render :show, status: :ok, location: @coupon }
      else
        format.html { render :edit }
        format.json { render json: @coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupons/1
  # DELETE /coupons/1.json
  def destroy
    @coupon.destroy
    respond_to do |format|
      format.html { redirect_to coupons_url, notice: 'Coupon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupon
      @coupon = Coupon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coupon_params
      params.require(:coupon).permit(:title, :description, :photo, :value, :expiration, categories_ids: [])
    end
end
