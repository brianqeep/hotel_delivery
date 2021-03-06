class Hotel < ActiveRecord::Base
    acts_as_votable
    has_many :orders
    belongs_to :user
    searchable do
      text :name
    end

    validates :name, :presence => true
    validates :location, :presence => true
    validates :about, :presence => true
end
