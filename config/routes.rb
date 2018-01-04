# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :dragao_bases
  # get "[o nome que queremos para a URL - Folder view]" => "[nome do Controller]#[nome do método/pagina]"

  get '/tamagoshis' => 'tamagoshi#start' # início
  get '/tamagoshis/new' => 'tamagoshi#new' # cadastro de um novo dragon
  post '/tamagoshis' => 'tamagoshi#create'

  get '/tamagoshis/play/:id' => 'tamagoshi#play', constraints: { id: /[0-9]+/ }, as: 'play' # ordem de chamada. chamar os metodos pra essa view:play.html.erb

  get '/tamagoshis/:id' => 'tamagoshi#show', constraints: { id: /[0-9]+/ }, as: 'exibicao' # colocando o prefix exibicao_path no controller

  get '/plays/:id/feed' => 'play#feed', constraints: { id: /[0-9]+/ } , as: 'comida'

  get '/plays/:id/rock' => 'play#rock', constraints: { id: /[0-9]+/ }, as: 'rock'

  get '/plays/:id/put_to_bed' => 'play#put_to_bed', constraints: { id: /[0-9]+/ }, as: 'put_to_bed'

  get '/plays/:id/toss' => 'play#toss', constraints: { id: /[0-9]+/ }, as: 'toss'

  get '/tamagoshis/index' => 'tamagoshi#index', as: 'exibe_todos'

end
