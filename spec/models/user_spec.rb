require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    subject { described_class.new(password: "test", password_confirmation: "test", email: "test@test.com", first_name: "test", last_name: "test") }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include("Password can't be blank")
    end

    it "is not valid with a password and password_confirmation that do not match" do
      subject.password_confirmation = "wrong"
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "is not valid without a unique email" do
      described_class.create!(password: "test", password_confirmation: "test", email: "test@test.com", first_name: "test", last_name: "test")
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include("Email has already been taken")
    end

    it "is not valid without a first_name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include("First name can't be blank")
    end

    it "is not valid without a last_name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include("Last name can't be blank")
    end

  end

  describe '.authenticate_with_credentials' do
    it "authenticates with correct credentials" do
      user = User.create!(first_name: 'First', last_name: 'Last', email: 'test@example.com', password: 'password', password_confirmation: 'password')
      expect(User.authenticate_with_credentials('test@example.com', 'password')).to eq(user)
    end
  
    it "does not authenticate with incorrect credentials" do
      User.create!(first_name: 'First', last_name: 'Last', email: 'test@example.com', password: 'password', password_confirmation: 'password')
      expect(User.authenticate_with_credentials('test@example.com', 'wrong_password')).to be_nil
    end
  
  end
  
end

