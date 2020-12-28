class Compr
    def welcome
        puts "Welcome to City Compr! We'll compare some awesome data of cities here."
        #  Add City ASCII art
        # Can try: https://github.com/pazdera/catpix to put actual images in the terminal
    end

    # Main Menu, ask which category to look at and how many cities to compare
    def get_category
        puts
        puts "What category would you like to look at? (Type the number of the option you'd like.)"
        puts "1. Cost of Living"
        puts "2. Climate"
        puts "3. Economy"
        puts "4. Politics"
        puts "5. Commute"
        puts "6. Crime"
        puts
        print "Your answer here: "
        category_input = gets.chomp.to_i

        if category_input.is_a? Numeric
            case category_input
                when 1
                    category = "Cost of Living"
                when 2
                    category = "Climate"
                when 3
                    category = "Economy"
                when 4
                    category = "Politics"
                when 5
                    category = "Commute"
                when 6
                    category = "Crime"
                else
                    puts "Hmm, didn't quite get that. Did you use a number between 1 and 6?"
                    puts
                    main_menu
            end
            puts "Got it. #{category} it is."
            puts
            return category
        else
            puts "Hmm, didn't quite get that. Did you use a number between 1 and 6?"
            puts
            main_menu
        end
    end

    # Ask how many cities to compare, return a hash with cities and states to use in URL lookup
    def get_city
        puts "How many cities would you like to compare?"
        num_cities = gets.chomp.to_i
        city_hash = {}

        num_cities.times do |i|
            city_state_arr = []
            
            print "City name: "
            city = gets.chomp
            city_state_arr << city

            print "State name: "
            state = gets.chomp
            city_state_arr << state

            city_hash[i] = city_state_arr
            puts "Added #{city}, #{state} to the list of cities to compare."
            puts
        end

        puts "Here are the cities we want to compare:"
        city_hash.each {|key, value| puts value[0]}

        return city_hash
    end

    # Make city objects and get requested data
    def get_data
        
    end
end