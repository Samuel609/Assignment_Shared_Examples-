require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user)}

  it 'has a valid factory' do 
    expect(create(:user)).to be_valid
  end

  it { is_expected.to(validate_presence_of(:name))}
  it { is_expected.to(validate_presence_of(:age))}
  it { is_expected.to(validate_presence_of(:gender))}

  it { is_expected.to(have_many(:textiles))}
end
