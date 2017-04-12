require "rails_helper"

describe Hotel do
    it { should validate_presence_of :name }
    it { should validate_presence_of :location }
    it { should validate_presence_of :about }
    it { should have_many :orders }

end
