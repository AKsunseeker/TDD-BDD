FactoryGirl.define do
  factory :robot, class: Robot do
    name 'Bob'
    friendly true
    inventor_id 1
  end

  factory :unfriendly_robot, class: Robot do
    name 'Bob'
    friendly false
    inventor_id 1
  end  
end