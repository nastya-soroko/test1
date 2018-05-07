# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :user do
    first_name FFaker::Name.first_name
    last_name FFaker::Name.last_name
    age 22
  end
end
