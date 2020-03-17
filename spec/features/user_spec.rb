require 'rails_helper'

RSpec.feature "Users", type: :feature do
  let(:user) { create(:user) }

  it 'ユーザー情報を編集' do
    login(user)
    click_on 'マイページ'
    expect(page).to have_content user.name
    expect(page).to have_content user.email
    click_on '編集'
    fill_in 'メールアドレス', with: nil
    click_on '更新する'
    expect(page).to have_content 'を入力してください'
    fill_in '名前', with: 'テスト太郎'
    fill_in 'メールアドレス', with: 'test123@test.com'
    click_on '更新する'
    expect(page).to have_content 'テスト太郎'
    expect(page).to have_content 'test123@test.com'
  end
end
