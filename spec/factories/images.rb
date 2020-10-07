FactoryBot.define do

  factory :image do
    image   {File.open("#{Rails.root}/spec/fixtures/bg-mainVisual-pict_pc.jpg")}
    image_id {""}
  end

end

