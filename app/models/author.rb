class Author < ApplicationRecord
validates_presence_of :name, uniqueness: true

validates_uniqueness_of :name, :case_sensitive => true

validates :phone_number, length: {is: 10}




end
