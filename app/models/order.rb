class Order < ApplicationRecord
    has_many :rolls,  dependent: :destroy
end
