

FactoryBot.define do
    factory :user, class: User do
      sequence(:email, 100) { |n| "TEST#{n}@example.com"}
      sequence(:password) { |n| "aaaaaaa#{n}"}
    end
    factory :user_s, class: User do
      email { "abc@gmail.com" }
      password { "aaaaaaaaa" }
    end
    factory :post, class: Post do
      sequence(:nm) { |n| "Post#{n}"}
      sequence(:cnt) {|n| n}
    end
end