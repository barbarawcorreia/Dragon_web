class Dragon_manager
  #CRIAR TESTES PARA ESSES ARQUIVOS. Ver como testar o model.
  def initialize(dragon,owner_name)
    @name = name
    @owner_name = owner_name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He does not need to go.
    puts "#{@name} is born."
  end

  def menu
    puts
    puts '1- Feed'
    puts '2- walk'
    puts '3- Put to bed'
    puts '4- Rock'
    puts '5- Toss'
    puts '#- Pressione outras teclas para sair.'
    puts
  end

  def die(msg)
    puts msg
    exit
  end

  def recursivo(acao)
    case acao
    when "1"
      feed
      puts 'Estou cheinho..Preciso relaxar!'
      menu
      loop do
        puts 'Pressione 4 para que eu possa cochilar..'
        acao = gets.chomp
        break if (acao == "4")
      end
      recursivo(acao)
    when "2"
      walk
      menu
      puts 'Estou com cansado..Preciso de descanso!'
      loop do
        puts "Pressione 3 para descansarmos juntos!"
        acao = gets.chomp
        break if (acao == "3")
      end
      recursivo(acao)
    when "3"
      put_to_bed
      # puts "E agora o que iremos fazer #{@dono}?"
      puts menu
      acao = gets.chomp
      recursivo(acao)
    when "4"
      rock
      puts 'E agora o que iremos fazer ?'
      puts menu
      acao = gets.chomp
      recursivo(acao)
    when "5"
      toss
      puts "Me diverti muito com você #{@dono}"
      puts 'E agora o que iremos fazer ?'
      puts menu
      acao = gets.chomp
      recursivo(acao)
    else
      die("Your Baby Dragon is going away")
    end
  end
end

