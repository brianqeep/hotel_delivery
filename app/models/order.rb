class Order < ActiveRecord::Base
    belongs_to :hotel
    belongs_to :user

    validates :name, :presence => true
    validates :number, :presence => true
    validates :location, :presence => true
    validates :order, :presence => true
end
