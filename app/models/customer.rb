class Customer < ApplicationRecord
    validates :name, presence: true, length: { in: 1..20 }
    validates :gender, length: { in: 0..1 }
    validates :age, length: { in: 40..120 }

    has_many :careplans
end
