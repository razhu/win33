FactoryGirl.define do
  factory :advertise, class: "Advertise" do
    title 'MyString'
    description 'MyText'
    direction 'MyString'
    price '9.99'
    negotiable false
    credit false
    price_m2 false
    name_contact 'MyString'
    phone_contact 'MyString'
    time_to_contact 'MyString'
    visits_number 1
    publish_date '2015-02-03'
    validate_date '2015-02-03'

    factory :not_valid_advertise do
      price -1
      title nil
      description nil
    end

    factory :blank_advertise do
      title ''
      description ''
    end
  end
end
