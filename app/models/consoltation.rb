class Consoltation < ApplicationRecord
  validates :first_name, prescence: true
  validates :last_name, prescence: true
  validates :phone, prescence: true
end
