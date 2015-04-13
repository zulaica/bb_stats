require 'rails_helper.rb'

describe Player do

  it { should belong_to :team }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }

end
