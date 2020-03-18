require 'rails_helper'

RSpec.feature "Sessions", type: :feature do
  let!(:user) { create(:user) }
  it 'ログイン' do
    visit login_path
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: 'hogehoge'
    click_on 'ログイン'
    expect(page).to have_content 'ログインしました'
    expect(page).to have_content 'マイページ'
  end
end
