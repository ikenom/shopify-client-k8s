# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { "test@example.com" }
    password { "password1" }
  end
end
