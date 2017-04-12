class Hotel < ActiveRecord::Base

    has_many :orders
    
    validates :name, :presence => true
    validates :location, :presence => true
    validates :about, :presence => true
end
