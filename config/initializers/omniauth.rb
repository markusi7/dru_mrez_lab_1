OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
   provider :facebook, "500634336782650", "4ae49a5ef5f6cd92ab7ee15f955fe662",  :scope => 'email,user_birthday,user_actions.music'
  provider :twitter, "BfsxXltI7zTkkWLYZszC9SiDa", "BpRkT9ybzX6tR06bd17xAyvtvNnPV7wQGvANN3BAqkpVbZQaUm"
  provider :github, "702de05d47c1906a3c0a", "d00159e75ff46745e778a0290454b1ee4c51ca9f"
end
