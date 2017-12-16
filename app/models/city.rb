class City < ActiveRecord::Base
    has_many :jobadverts
    has_many :worker
    validates :name, presence: true
    validates :name, length: { minimum: 2}
    validates :name, uniqueness: true
end
