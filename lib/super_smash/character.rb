class Character
    attr_accessor :name, :weight, :fallspeed, :walljump, :guide, :tierdata

    @@all = []
    
    def initialize(name, weight, fallspeed, walljump, guide, tierdata)
        @name = name
        @weight = weight
        @fallspeed = fallspeed
        @walljump = walljump
        @guide = guide
        @tierdata = tierdata
        save 
    end 

    def save 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.info
        character_info = []
        @@all.each do |character|
            character_info << 
            "#{"Name:".colorize(:background => :black)} #{character.name.colorize(:background => :black)}
             \n#{"Tier Ranking:".colorize(:background => :black)} #{character.tierdata.colorize(:background => :black)}
             \n#{"Weight:".colorize(:background => :black)} #{character.weight.colorize(:background => :black)}
             \n#{"Fallspeed:".colorize(:background => :black)} #{character.fallspeed.colorize(:background => :black)}
             \n#{"Walljump:".colorize(:background => :black)} #{character.walljump.colorize(:background => :black)}
             \n#{"Guide:".colorize(:background => :black)} #{character.guide.colorize(:background => :black)}
            "
        end 
        character_info
    end 

    def self.list
        self.all.each.with_index(1) do |character, index|
            if index <= 9 
                puts " #{index}. #{character.name}".colorize(:background => :black)
            else 
                puts "#{index}. #{character.name}".colorize(:background => :black)
            end 
        end 
    end 

    #used to set the logic of input so that the number can never exceed the amount of characters 
    def self.names 
        names = []
        @@all.each do |name|
        names << name 
        end 
    end

end 

    


