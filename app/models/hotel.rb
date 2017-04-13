class Hotel < ActiveRecord::Base

    has_many :orders
    belongs_to :user
    
    validates :name, :presence => true
    validates :location, :presence => true
    validates :about, :presence => true
end
