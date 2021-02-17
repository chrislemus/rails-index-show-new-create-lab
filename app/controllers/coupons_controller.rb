class CouponsController < ApplicationController
  def show
    puts params
    @coupon = Coupon.find(params[:id])
  end

  def create
    c = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(Coupon.last)
  end

  def index
    @coupons = Coupon.all
  end

  def new
    
  end
end
