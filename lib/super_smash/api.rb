class Api

    def self.get_data
        response = RestClient.get("http://smashlounge.com/api/chars/all")
        characters = JSON.parse(response.body)
        characters.each do |character|
            Character.new(
                character["name"], 
                character["weight"], 
                character["fallspeed"],
                character["walljump"], 
                character["guide"], 
                character["tierdata"]
            )
        end 
    end 
end 