Rails.application.routes.draw do
  resources :dragao_bases
#get "[o nome que queremos para a URL]" => "[nome do Controller]#[nome da página]"
get 'tamagoshi/world' => 'tamagoshi#world' #só a foto e o botão iniciar, jogando p/ próxima page.
get 'tamagoshi/play' => 'tamagoshi#play' #page com o joguinho em si. chamar os métodos pra essa view:play.html.erb
end
