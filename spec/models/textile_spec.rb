require 'rails_helper'

RSpec.describe Textile, type: :model do
  subject { create(:textile)}

  it 'has a valid factory' do 
    expect(create(:textile)).to be_valid
  end

  it { is_expected.to(validate_presence_of(:name))}
  it { is_expected.to(validate_presence_of(:description))}
  it { is_expected.to(validate_presence_of(:status))}
  it { is_expected.to(validate_presence_of(:price))}

  it { is_expected.to(belong_to(:user))}
end

