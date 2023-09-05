require 'rails_helper'

RSpec.describe User, type: :model do
  before { User.create(name: 'John', email: 'john@email.com') }
  it 'just test name' do
    expect(User.last.name).to eq('John')
  end

  it 'just test email' do
    expect(User.last.email).to eq('john@email.com')
  end
end
