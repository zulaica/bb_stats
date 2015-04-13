require 'rails_helper.rb'

describe Player do

  it { should belong_to :team }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should have_and_belong_to_many :games }

end
