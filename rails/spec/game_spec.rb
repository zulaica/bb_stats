require 'rails_helper'

describe Game do

  it { should have_and_belong_to_many :players }
  it { should validate_presence_of :date }
  it { should validate_presence_of :location }

end
