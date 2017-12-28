# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :dragao_bases
  # get "[o nome que queremos para a URL - Folder view]" => "[nome do Controller]#[nome do método/pagina]"

  get '/tamagoshis/index' => 'tamagoshi#index', as: 'exibe_todos'
  get '/tamagoshis' => 'tamagoshi#start' # início
  get '/tamagoshis/new' => 'tamagoshi#new' # cadastro de um novo dragon
  post '/tamagoshis' => 'tamagoshi#create'

  get '/tamagoshis/play' => 'tamagoshi#play', as: 'play' # ordem de chamada. chamar os metodos pra essa view:play.html.erb

  get '/tamagoshis/:id' => 'tamagoshi#show', as: 'exibicao' # colocando o prefix exibicao_path no controller
  # get '/tamagoshis/index' => 'tamagoshi#index', as: 'exibe_todos'
end
