require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  it { should have_many(:favourites) }
  it { should have_many(:favourited_wods) }

  # Validation tests
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
end
