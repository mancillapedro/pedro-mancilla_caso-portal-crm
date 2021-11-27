class LeadTalk < ApplicationRecord
  belongs_to :lead
  belongs_to :talk
  belongs_to :user
end
