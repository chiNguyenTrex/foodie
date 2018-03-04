require "thor/group"

module Foodie
  module Generator
    class Recipe < Thor::Group
      include Thor::Actions

      argument :group, type: :string
      argument :name, type: :string

      def create_group
        empty_directory group
      end

      def copy_template
        template "recipe.txt", "#{group}/#{name}.txt"
      end

      def self.source_root
        File.dirname(__FILE__) + "/recipe"
      end
    end
  end
end
