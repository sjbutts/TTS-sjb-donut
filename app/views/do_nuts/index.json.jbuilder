json.array!(@do_nuts) do |do_nut|
  json.extract! do_nut, :id, :name, :string, :toppings, :price, :image
  json.url do_nut_url(do_nut, format: :json)
end
