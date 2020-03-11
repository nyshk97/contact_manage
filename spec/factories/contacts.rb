# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    company { 'サンプル株式会社' }
    name { '山田太郎' }
    kana { 'ヤマダタロウ' }
    email { 'test@example.com' }
    phone { '09011112222' }
    content { 'hogehogehoge' }
  end
end
