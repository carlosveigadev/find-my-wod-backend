require 'rails_helper'

RSpec.describe Favourite, type: :model do
  # Association test
  it { should belong_to(:wod) }
  it { should belong_to(:user) }
end