Rails.application.routes.draw do
  resources :dragao_bases
  # get "[o nome que queremos para a URL]" => "[nome do Controller]#[nome da pagina]"
  get 'tamagoshi/world' => 'tamagoshi#world' # so a foto e o botão iniciar, jogando p/ proxima page.
  get 'tamagoshi/play' => 'tamagoshi#play' # page com o joguinho em si. chamar os metodos pra essa view:play.html.erb
end
