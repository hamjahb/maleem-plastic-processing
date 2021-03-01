class Order < ApplicationRecord
    has_many :rolls,  dependent: :destroy
    has_many :deliveries,  dependent: :destroy
end
