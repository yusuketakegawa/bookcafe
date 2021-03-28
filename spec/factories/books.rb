FactoryBot.define do
  factory :book do
    title   {'本'}
    author  {'著者'}
    description   {'説明'}
    genre_id   {2}
    association :user
  end
end
