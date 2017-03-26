class SoloGame
    attr_accessor :goal_hash
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @msg ={
                wel1_target: "#{"-"*40}\n\nHi #{@player1},\nEnter a secret word for #{player2} to guess.\n\n",
                wel1_cat: "Enter a category",
                wel1_uniq: "Enter something unique about the secret word.",
                wel2_greet: "#{"-"*40}\n\nHi #{@player2}!  Welcome to the game.\n\n#{@player1} has entered a secret word for you to guess.\nWould you like to try to guess what it is?",
                wel2_yn: "Enter Y for Yes, or N for No.",
                wel2_bye:  "#{"-"*40}\n\nOh, #{@player2}, Such a shame!\nYou're missing out on a lot of fun!\nBye!\n\n",
                hinter_rule: "#{"-"*40}\n\nAwesome!\nThe rules are simple:\n* 10 points for each correct letter.\n* Unlimited guesses, but game-over if 3 consecutive wrong guesses.",
                hinter_list: "\n\nHere are a few hints about the secret word...",
                guesser_prompt: "Please guess a letter or the whole word..."
            }
        @goal = {}
        @hinted = false
        @success = false
    end

    def welcome_p1
        puts @msg[:wel1_target]

        target = gets.chomp
        @goal[:target] = target

        targets = []
        hiddens = []

        @goal[:targets] = targets.push(target.split(""))
        @goal[:hiddens] = hiddens.push(target.split(""))

        puts @msg[:wel1_cat]
        @goal[:cat] = gets.chomp

        puts @msg[:wel1_uniq]
        @goal[:unique] = gets.chomp
    end

    def welcome_p2
        puts @msg[:wel2_greet]
        puts @msg[:wel2_yn]
        pass = false

        # while pass == false
        #     confirm = gets.chomp
        #     if confirm.downcase == "y"
                hinter
        #         pass = true
        #     elsif confirm.downcase == "n"
        #         puts @msg[:wel2_bye]
        #         return
        #     else
        #         puts "\n\nSorry #{player2}, #{confirm} is an invalid response."
        #         puts @msg[:wel2_yn]
        #     end
        # end

    end

    def hinter
        unless @hinted
            puts @msg[:hinter_rule]
            @hinted = true
        end

        if @hinted && @success
            puts "Congratulations!\nNice guess!\nTry to guess another letter!"
        end

        puts @msg[:hinter_list]
        puts "Length: #{@goal[:target].length}"
        puts "Vowels: #{vowels = voweler(@goal[:target])}"
        puts "Category: #{@goal[:cat]}"
        puts "Unique: #{@goal[:unique]}"
        guesser
    end

    def guesser
        puts @msg[:guesser_prompt]
        answer = gets.chomp
        logic(answer)
    end

    def logic(answer)

        if @goal[:answers]
            @goal[:answers].push(answer)
        else
            answers = []
            answers.push(answer)
            @goal[:answers] = answers
        end

        wrongs = @goal[:answers] - @goal[:targets]
        @goal[:answers].each{|x| @goal[:hiddens][0].delete(x)}
        rights = @goal[:targets][0] - @goal[:hiddens][0]
        points = rights.count*10

        displays = []
        @goal[:targets][0].each do |x|

            if @goal[:hiddens][0].include?(x)
                displays.push(" _ ")
            else
                displays.push(" #{x} ")
            end
        end

        score = {secret: displays.join(" "),
            points: rights.count*10,
            right: rights.join(" "),
            wrong: wrongs.join(" "),
            total: @goal[:answers].join(" ")
        }

        @success = true
        score_printer(score)
    end

    def umpire
    end

    def score_printer(score)
        divider = "\n\n#{"-"*30}\n\n"
        puts divider
        puts "Secret Word: #{score[:secret]}\n\n"
        puts "Your ScoreBoard..."
        puts "Point Total: #{score[:points]}"
        puts "Correct Letters: #{score[:right]}"
        puts "Wrong Letters: #{score[:wrong]}"
        puts "Total Letters Entered: #{score[:total]}"
        puts divider
        hinter
    end

    def voweler(str)
        str.scan(/[aeoui]/).count
    end

end

game1 = SoloGame.new("Adam", "Gahee")
game1.welcome_p1
game1.welcome_p2
