class Contract < ActiveRecord::Base
  belongs_to :jobadvert
  belongs_to :worker
end
