class Lead < ApplicationRecord
  belongs_to :user
  has_many :lead_talks, dependent: :destroy
  has_many :talks, through: :lead_talks, dependent: :destroy
  validates :name, presence: true
  validates :surname, presence: true
  validates :telephone, presence: true
  validates :email, presence: true
  validates :status, presence: true, inclusion: { in: ["Prospecto", "Interesado", "Cliente"] }

  scope :prospectos, -> { where(status: "Prospecto") }
  scope :interesados, -> { where(status: "Interesado") }
  scope :clientes, -> { where(status: "Cliente") }
end
