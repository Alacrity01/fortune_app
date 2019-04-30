Rails.application.routes.draw do
  get "/fortunes_url" => 'api/fortunes#random_fortune'
  get "/lotto_url" => 'api/fortunes#lotto'
  get "/visits_url" => 'api/fortunes#visits'
  get "/lyrics_url" => 'api/fortunes#bottles_of_beer'
end
