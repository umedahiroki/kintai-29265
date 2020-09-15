FactoryBot.define do

    factory :user do
        nicknmame             { Faker::Name.initials(number: 2) }
        email                 { Faker::Internet.free_email }
        password              { Faker::Internet.password(min_length: 6) }
        password_confirmation { password }
        first_name            { '田中' }
        last_name             { '次郎' } 
        first_name_kana       {'タナカ'} 
        last_name_kana        {'ジロウ'} 
        birthday              { Faker::Date.birthday }
      end
  end
  