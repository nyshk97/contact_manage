require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of :email }
  subject { User.create(email: 'hoge@hoge.com') }
  it { is_expected.to validate_uniqueness_of :email }
end
