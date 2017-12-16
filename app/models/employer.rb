class Employer < ActiveRecord::Base
    has_many :jobadverts
    validates :name, presence: true
    validates :lastname, presence: true   
    validates :email, presence: true
end
