class Btdquan < ActiveRecord::Base
  belongs_to :btdtt
  has_many :btdpxas
end
