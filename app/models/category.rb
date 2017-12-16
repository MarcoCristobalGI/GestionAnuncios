class Category < ActiveRecord::Base
    has_many :jobadverts
    validates :name, presence: true, 
                    uniqueness: {case_sensitive: false}
end
