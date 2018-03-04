require "thor"
require "foodie/food"
require "foodie/generator/recipe"

module Foodie
  class CLI < Thor
    desc "portray ITEM", "Determine if a piece of food is gross or delicious"
    def portray name
      puts Foodie::Food.portray(name)
    end

    desc "pluralize WORD", "Convert a word into its plural"
    method_option :word, aliases: "-w"
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end

    # If we want to add more options later on, we can define them by using
    # the method_options helper like this
    # method_options word: :string, uppercase: :boolean

    desc "recipe", "Generate a recipe scaffold"
    def recipe group, name
      Foodie::Generator::Recipe.start [group, name]
    end
  end
end
