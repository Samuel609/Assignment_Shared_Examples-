class User < ApplicationRecord
    has_many :textiles

    validates :name, :age, :gender, presence: true
end
