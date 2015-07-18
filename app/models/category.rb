class Category < ActiveRecord::Base
  has_many :challenges
end
