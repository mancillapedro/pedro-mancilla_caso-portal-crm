class Talk < ApplicationRecord
  has_one :lead_talk
  has_one :user, through: :lead_talk
end
