FactoryBot.define do
  factory :quote do
    content { "MyString" }
    value { 1 }
    celebrity { nil }
  end
end
