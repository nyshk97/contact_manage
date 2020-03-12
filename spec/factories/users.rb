# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'test1@test.com' }
    password { 'hogehoge' }
    salt { 'salt' }
    crypted_password { Sorcery::CryptoProviders::BCrypt.encrypt('hogehoge', 'salt') }
  end
end
