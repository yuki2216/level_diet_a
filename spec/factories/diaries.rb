FactoryBot.define do
  factory :diary do
    day {Faker::Date.in_date_period}
    weight {"60.00"}
    sugar {"100.0"}
    protein {"300.0"}
    calorie {"300.0"}
    lipid {"30.0"}
    exercise {Faker::Lorem.sentence}
    comment {Faker::Lorem.sentence}
    association :user 
  end
end
