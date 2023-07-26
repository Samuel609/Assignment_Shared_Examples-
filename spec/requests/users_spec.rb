require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:valid_attributes) do
    {
      name: Faker::Name.name,
      gender: true,
      age: 13
    }
  end

    let(:invalid_attributes) do
      {
        name: nil,
        gender: true,
        age: 13
      }
    end
end
