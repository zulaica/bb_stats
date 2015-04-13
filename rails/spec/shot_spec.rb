require 'rails_helper.rb'

describe Shot do

  it { should belong_to :player }
  it { should validate_presence_of :made }
  it { should validate_presence_of :value }

end
