Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  scope path: '/api' do
    api_version(:module => "Api::V1", :path => {:value => "v1"}) do
    end
  end

  ActiveAdmin.routes(self)

  devise_for :users


  root to: "admin/dashboard#index"
end
