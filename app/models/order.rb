class Order < ActiveRecord::Base
    belongs_to :hotel
    
    validates :name, :presence => true
    validates :number, :presence => true
    validates :location, :presence => true
    validates :order, :presence => true
end
