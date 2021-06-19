class TowersOfHanoi
    attr_reader :stacks

    def initialize
        @stacks = [[3,2,1],[],[]]
    end

    def valid_move?(from_tower, to_tower)
        return false if from_tower.empty?

        !@stacks[from_tower].empty? && (
            @stacks[from_tower].last < @stacks[to_tower].last ||
            @stacks[to_tower].empty?
        )
    end 

    

end