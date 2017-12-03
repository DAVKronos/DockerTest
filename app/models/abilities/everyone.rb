module Abilities
  class Everyone
    include CanCan::Ability

    def initialize(user)
      can [:home], :page
    end
  end
end
