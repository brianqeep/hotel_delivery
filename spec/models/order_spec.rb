require 'rails_helper'

describe Order do
    it { should validate_presence_of :name }
    it { should have_many :skills }
    it { should have_many :comments }
  end
