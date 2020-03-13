require 'rails_helper'

RSpec.feature "問い合わせ編集", type: :feature do
  let!(:contact) { create(:contact) }
  let(:user) { create(:user) }

  it '対応済に変更' do
    open_contact(user)
    choose 'contact_status_2'
    click_on '更新する'
    expect(page).to have_content '更新しました'
    expect(page).to_not have_content contact.name
    click_link '対応済'
    expect(page).to have_content contact.name
  end
  
  it 'コメントを追加' do
    comment = 'test comment'
    open_contact(user)
    expect(page).to_not have_content comment
    fill_in 'comment_content', with: comment
    click_on '追加'
    expect(page).to have_content comment
  end

  def open_contact(user)
    login(user)
    click_link '詳細'
    expect(page).to have_content contact.name
  end
end
