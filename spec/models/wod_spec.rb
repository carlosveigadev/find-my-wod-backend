require 'rails_helper'

RSpec.describe Wod, type: :model do
  # Association test
  it { should have_many(:favourites) }
  it { should have_many(:athletes) }

  # Validation tests
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image) }
  it {
    should validate_length_of(:title)
      .is_at_least(2)
  }
end
