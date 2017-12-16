class Qualify < ActiveRecord::Base
  belongs_to :worker
  belongs_to :score
end
