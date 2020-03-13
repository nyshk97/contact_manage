# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { '茂野吾郎' }
    email { 'test1@test.com' }
    company_id { '1234abcd' }
    password { 'hogehoge' }
    salt { 'salt' }
    crypted_password { Sorcery::CryptoProviders::BCrypt.encrypt('hogehoge', 'salt') }
  end
end
