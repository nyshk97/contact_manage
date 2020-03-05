require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :content }
  it { is_expected.to validate_length_of(:content).is_at_most(1000) }
end
