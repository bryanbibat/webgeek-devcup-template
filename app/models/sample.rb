class Sample < ActiveRecord::Base
  attr_accessible :content, :name, :price, :quantity

  paginates_per 5
end
