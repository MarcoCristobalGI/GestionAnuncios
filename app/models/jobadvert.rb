class Jobadvert < ActiveRecord::Base
  belongs_to :employer
  belongs_to :category
  belongs_to :city
  validates :vacancies, presence: true, 
   numericality: { greater_than_or_equal_to: 0,
 lower_than_or_equal_to: 100 }
 validates :title, presence: true
end
