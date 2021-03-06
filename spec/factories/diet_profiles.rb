FactoryGirl.define do

  sequence :name do |n|
    "name#{n}"
  end

  factory :diet_profile do
    name

    factory :diet_profile_with_ingredients do
      transient do
        ingredients_count 5
      end

      after(:create) do |diet_profile, evaluator|
        create_list(:ingredient, evaluator.ingredients_count, diet_profiles: [diet_profile])
      end

    end
  end
end
