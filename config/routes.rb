Rails.application.routes.draw do
  resources :dragao_bases
#get "[o nome que queremos para a URL]" => "[nome do Controller]#[nome da página]"
get 'tamagoshi/world' => 'tamagoshi#world'
get 'tamagoshi/play' => 'tamagoshi#play'
#Criar/modificar uma rota para jogar real., mas tem que ser criado algo na view pra chamar os métodos de model e instaciar
 #no controller.
end
