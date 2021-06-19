class TowersOfHanoi
    attr_reader :stacks

    def initialize
        @stacks = [[3,2,1],[],[]]
    end

    def valid_move?(from_tower, to_tower)
        return false unless [from_tower, to_tower].all? { |i| i.between?(0, 2) }

        !@stacks[from_tower].empty? && (
            @stacks[to_tower].empty? ||
            @stacks[from_tower].last < @stacks[to_tower].last 
        )
    end 

    def move(from_tower, to_tower)
        raise "Cannot move from an empty tower." if @stacks[from_tower].empty?
        raise "Invalid move." unless valid_move?(from_tower, to_tower)
        @stacks[to_tower] << @stacks[from_tower].pop
    end

    def won?
        @stacks[0].empty? && @stacks[1..2].any?(&:empty?)
    end

    def render
        'Tower 0: ' + @stacks[0].join(' ') + "\n" +
        'Tower 1: ' + @stacks[1].join(' ') + "\n" +
        'Tower 2: ' + @stacks[2].join(' ') + "\n"
    end

    def display
        system('clear')
        puts render
    end

    def play
        display

        until won?
            puts 'Which tower would you like to take from?'
            from_tower = gets.to_i

            puts 'Which tower would you like to move to?'
            to_tower = gets.to_i

            if valid_move?(from_tower, to_tower)
                move(from_tower, to_tower)
                display
            else
                display
                puts "Invalid move please try again."
            end
        end

        puts "You win!"
    end
end


if $PROGRAM_NAME == __FILE__
    TowersOfHanoi.new.play
end