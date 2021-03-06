Rails.application.routes.draw do
  
  resources :comments
  resources :post1s
  # get 'pages/contact'
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"
  
  get "ref0", to: redirect("http://edgeguides.rubyonrails.org/")
  get "ref1", to: redirect("http://railscasts.com")
  get "ref2", to: redirect("https://gorails.com")
  get "ref3", to: redirect("https://railstutorial.org")
  get "ref4", to: redirect("http://railsforzombies.org")
  get "ref5", to: redirect("https://thoughtbot.com/upcase/rails")
  get "ref6", to: redirect("http://guides.rubyonrails.org/")
  get "ref7", to: redirect("http://learn-rails.com/")
  get "ref8", to: redirect("http://www.theodinproject.com/")
  # get "ref8", to: redirect("https://drive.google.com/file/d/0B6S6WKwpSu8IRndCQWM0OGZWWDQ/view")
  get "ref9", to: redirect("https://github.com/eliotsykes/rspec-rails-examples")
  get "ref10", to: redirect("http://awesome-ruby.com/")
  get "ref11", to: redirect("https://github.com/ekremkaraca/awesome-rails")
  get "ref12", to: redirect("https://rvm.io/")
  get "ref13", to: redirect("https://github.com/rbenv/rbenv#readme")
  get "ref14", to: redirect("https://www.udemy.com/courses/")
  get "ref15", to: redirect("https://www.skillshare.com/home")
  get "ref16", to: redirect("https://www.codecademy.com/learn/all")
  get "ref17", to: redirect("https://www.freecodecamp.com/")
  get "ref101", to: redirect("https://www.python.org/")            
  get "ref102", to: redirect("https://simpleprogrammer.com/2017/02/15/get-started-learning-python/")            
  get "ref103", to: redirect("https://realpython.com/")            
  get "ref104", to: redirect("https://training.talkpython.fm/courses/explore_python_jumpstart/python-language-jumpstart-building-10-apps")            
  get "ref105", to: redirect("https://learnpythonthehardway.org/book/")            
  get "ref106", to: redirect("https://www.codecademy.com/learn/python")            
  get "ref107", to: redirect("https://www.codeschool.com/learn/python")            
  get "ref108", to: redirect("https://training.talkpython.fm/courses/explore_entrepreneurs/python-for-entrepreneurs-build-and-launch-your-online-business")            
  get "ref109", to: redirect("https://www.datacamp.com/courses/intro-to-python-for-data-science")            
  get "ref110", to: redirect("https://www.amazon.com/gp/product/1449355730/ref=as_li_ss_tl?ie=UTF8&linkCode=sl1&tag=trndingcom-20&linkId=963e5708fd96380e4d706d280dd8f477")            
  get "ref111", to: redirect("https://www.amazon.com/exec/obidos/ASIN/1593275994/makithecompsi-20")            
  get "ref112", to: redirect("https://www.udemy.com/learning-python-not-the-snake/learn/v4/overview")  
  get "ref113", to: redirect("https://www.pyimagesearch.com/practical-python-opencv/") 
  get "ref114", to: redirect("https://www.pythonanywhere.com/") 
  get "ref115", to: redirect("https://simpleprogrammer.com/2017/01/18/7-reasons-why-you-should-learn-python/") 
  # get "ref116", to: redirect("") 

  # get 'pages/about'
  get "about", to: "pages#about"


  resources :comments
  resources :connections
  resources :categories
  resources :posts
  resources :users, only: [:new, :create]
  
  # get 'pages/home'
  root 'pages#home'
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  # We need this "https://rubyws-timchen7.c9users.io/rails/info/routes"
  # so, dont do this : get "*path", to: redirect("/error")
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
