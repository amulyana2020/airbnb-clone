class Property < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :address_1, presence: true
    validates :address_2, presence: true
    validates :country, presence: true
end