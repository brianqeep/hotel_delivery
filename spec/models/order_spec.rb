require 'rails_helper'

describe Order do
    it { should validate_presence_of :name }
    it { should validate_presence_of :number }
    it { should validate_presence_of :location }
    it { should validate_presence_of :order }
    it { should belong_to :hotel }

  end
