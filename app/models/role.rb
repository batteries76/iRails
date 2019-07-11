class Role < ApplicationRecord
    has_many :users
    
    validates :privilege, :description, presence: true
end
