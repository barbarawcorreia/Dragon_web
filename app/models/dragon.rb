class Dragon
  attr_accessor :name,:owner_name,:stuff_in_intestine,:stuff_in_belly,:asleep
  def initialize(name,owner_name)
    @name = name
    @owner_name = owner_name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He does not need to go.
    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    #Move food from belly to instestine.
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    #Feed to much
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        puts "#{@name} snores,filling the room with smoke.\n\n"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
      if @stuff_in_belly == 0
        puts "Estou com fome..Vamos comer?"
        puts "Pressione 1 para me alimentar..."
      end
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    #Toss with full intestine
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end
end
