class Textile < ApplicationRecord
    belongs_to :user

    validates :name, :description, :price, :status, presence: true
end
