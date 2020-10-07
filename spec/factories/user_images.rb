FactoryBot.define do

  factory :user_image do
    image   {File.open("#{Rails.root}/spec/fixtures/bg-mainVisual-pict_pc.jpg")}
    user_image_id {""}
  end

end