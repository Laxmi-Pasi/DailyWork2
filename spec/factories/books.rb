FactoryBot.define do
  factory :book do
    name { "MyString" }
    isbn { "MyString" }
    author { nil }
    published_at { "2022-08-04" }
    pages { 1 }
  end
end
