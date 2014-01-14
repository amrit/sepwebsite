class Application < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :year, :major
end
