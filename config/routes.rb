Rails.application.routes.draw do
  # Retrieve HTML pages
  constraints(format: 'html') do
    devise_for :users
    resources :users
    resources :pages
  end

  # Retrieve JSON data
  constraints(format: 'json') do
  end

  # Retrieve PDF table
  constraints(format: 'pdf') do
  end
end
