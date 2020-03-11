# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'contacts', type: :request do
  describe '新規登録' do
    it 'POSTを投げたら問い合わせが追加される' do
      expect {
        post contacts_path, params: {
          company: 'hoge株式会社',
          name: 'hoge',
          kana: 'ホゲ',
          email: 'hoge@hoge.com',
          phone: '09011112222',
          content: 'サンプルテキスト'
        }
      }.to change(Contact.all, :count).by(1)
      expect(response).to have_http_status(204)
    end
  end
end
