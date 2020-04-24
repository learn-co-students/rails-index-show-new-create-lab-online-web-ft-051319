class Coupon < ActiveRecord::Base

    def coupon_info
        self.coupon_code + " " + self.store
    end
end