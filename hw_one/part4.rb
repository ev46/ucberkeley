class Dessert

	attr_reader :name
	attr_writer :name
	attr_reader :calories
	attr_writer :calories

    def initialize(name, calories)
        @name = name
        @calories = calories
    end

    def healthy?
        @calories < 200
    end

    def delicious?
        true
    end

end

class JellyBean < Dessert

	attr_reader :flavor
	attr_writer :flavor

    def initialize(name, calories, flavor)
    	super(name,calories)
        @flavor = flavor

    end

    def delicious?
        if @flavor == "black licorice"
        	false
        else
        	true
        end
    end

    
end