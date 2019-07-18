class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def create
        coupon_code = params[:coupon][:coupon_code]
        store = params[:coupon][:store]

        @coupon = Coupon.create(coupon_code: coupon_code,
            store: store
            )

        redirect_to coupon_path(@coupon)
    end

    def show
        @coupon = Coupon.find_by(id: params[:id])
    end

end