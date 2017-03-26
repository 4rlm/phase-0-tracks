class Game
    def initialize
        @msg ={
                wel1_target: "#{"-"*40}\n\nPlayer 1, enter a word for your oponent to guess.\n\n",
                wel1_cat: "Enter a category",
                wel1_uniq: "Enter something unique about the target word.",
                wel2_greet: "#{"-"*40}\n\nHi Player 2!  Welcome to the game.\n\nPlayer 1 has chosen a word for you to guess.\nWould you like to try to guess what it is?",
                wel2_yn: "Enter Y for Yes, or N for No.",
                wel2_bye:  "#{"-"*40}\n\nOh, Player 2, Such a shame!\nYou're missing out on a lot of fun!\nBye!\n\n",
                hinter_rule: "#{"-"*40}\n\nAwesome!\nThe rules are simple:\nPoints: 10 points for each correct letter.\nGuesses: Unlimited, but game-over if 3 consecutive wrong guesses.",
                hinter_list: "Here are a few hints about it..",
                guesser_prompt: "Please guess a letter or the whole word..."
            }
        @goal_hash = {}
    end

    def welcome_p1
        puts @msg[:wel1_target]
        @goal_hash[:target] = gets.chomp

        puts @msg[:wel1_cat]
        @goal_hash[:cat] = gets.chomp

        puts @msg[:wel1_uniq]
        @goal_hash[:unique] = gets.chomp
    end

    def welcome_p2
        puts @msg[:wel2_greet]
        puts @msg[:wel2_yn]
        pass = false

        while pass == false
            confirm = gets.chomp
            if confirm.downcase == "y"
                hinter
                pass = true
            elsif confirm.downcase == "n"
                puts @msg[:wel2_bye]
                return
                pass = true
            else
                puts "\n\nSorry, #{confirm} is an invalid response."
                puts @msg[:wel2_yn]
                pass = false
            end
        end
    end


    def hinter
        hinted = false
        if hinted == false
            puts @msg[:hinter_rule]
            hinted = true
        end

        puts @msg[:hinter_list]
        puts "Length: #{@goal_hash[:target].length}"
        puts "Vowels: #{vowels = voweler(@goal_hash[:target])}"
        puts "Category: #{@msg[:cat]}"
        puts "Unique: #{@msg[:unique]}"

        guesser
    end

    def guesser
        puts @msg[:guesser_prompt]
        answer = gets.chomp
    end



    def voweler(str)
        str.scan(/[aeoui]/).count
    end

end

player1 = Game.new
player1.welcome_p1


player2 = Game.new
player2.welcome_p2
