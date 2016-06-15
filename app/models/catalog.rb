class Catalog < ActiveRecord::Base
  belongs_to :category
  has_many :photographies
end
