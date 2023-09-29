# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "date"

class Cat < ApplicationRecord
    CAT_COLORS = ["black", "white", "orange"]
    validates :name, presence: true
    validates :color, inclusion: {in: CAT_COLORS}
    validates :sex, inclusion: {in: ["M", "F"]}
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date > Date.today
            errors.add(:birth_date, "can't be in the futre")
        end
    end
end
