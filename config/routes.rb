Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contacts_url' => 'contacts#contacts_method'
  get '/contact1_url' => 'contacts#contact1_method'
  get '/contact2_url' => 'contacts#contact2_method'
  get '/contact3_url' => 'contacts#contact3_method'
end
