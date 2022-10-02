require 'rails_helper'

RSpec.describe User, type: :model do
  it '作成できる' do
    user = build(:user)
    expect(user).to be_valid
  end

  describe '作成できない' do
    it 'nameがnilの時' do
      user = build(:user, name: nil)
      expect(user).to_not be_valid
    end
    it 'ageがnilの時' do
      user = build(:user, age: nil)
      expect(user).to_not be_valid
    end
  end
end
