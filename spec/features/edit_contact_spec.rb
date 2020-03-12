require 'rails_helper'

RSpec.feature "対応済に変更", type: :feature do
  let!(:contact) { create(:contact) }
  let(:user) { create(:user) }
  it 'ステータス変更' do
    login(user)
    click_link '詳細'
    expect(page).to have_content contact.name
    choose 'contact_status_2'
    click_on '更新する'
    expect(page).to have_content '更新しました'
    expect(page).to_not have_content contact.name
    click_link '対応済'
    expect(page).to have_content contact.name
  end
end
