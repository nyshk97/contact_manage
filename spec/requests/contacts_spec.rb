# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'contacts', type: :request do
  describe '新規登録' do
    it 'POSTを投げたら問い合わせが追加される' do
      expect {
        post contacts_path, params: {
          name: 'hoge',
          email: 'hoge@hoge.com',
          content: 'サンプルテキスト'
        }
      }.to change(Contact.all, :count).by(1)
      expect(response).to have_http_status(204)
    end
  end
  # describe '編集' do
  #   it 'ステータス変更' do
      
  #   end
  # end
end
