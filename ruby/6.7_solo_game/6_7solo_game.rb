class SoloGame
    attr_accessor :goal_hash
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @divider = "\n#{"-"*30}\n"
        @clear = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        @msg ={
                wel1_target: "#{@divider}Hi #{@player1},\nEnter a secret word for #{player2} to guess.\n\n",
                wel1_cat: "Enter a category",
                wel1_uniq: "Enter something unique about the secret word.",
                wel2_greet: "#{@divider}Hi #{@player2}!  Welcome to the game.\n\n#{@player1} has entered a secret word for you to guess.\nWould you like to try to guess what it is?",
                wel2_yn: "Enter Y for Yes, or N for No.",
                wel2_bye:  "#{@divider}Oh, #{@player2}, Such a shame!\nYou're missing out on a lot of fun!\nBye!\n\n",
                hinter_rule: "#{@divider}Rules...\n* 10 points for each correct letter.\n* 100 Bonus Points if you complete the challange!\n* 3 Wrong Guesses Allowed\n* Total Guesses Allowed",
                hinter_list: "#{@divider}Hints...",
                guesser_prompt: "#{@divider}Please guess only 1 letter of the secret word...\n\n",
                ump_win_msg: "#{@clear}#{@divider}Congratulations!  You get 100 Bonus Points!\nYou guessed the Secret Word: ",
                ump_0_msg: "#{@clear}#{@divider}Game Over!  You reached the maximum attempts!",
                ump_success_msg: "#{@clear}#{@divider}Wow!  The letter you guessed is correct!\nKeep going!  You're on a winning streak.\nRemaining guesses: ",
                ump_fail_msg: "#{@clear}#{@divider}Yikes!  That's the wrong answer.\nDon't worry.  You can guess again.\nRemaining guesses: "
            }
        @goal = {}
        @hinted = false
        @win = false
        @fail = false
    end

    def welcome_p1
        puts "#{@clear}#{@msg[:wel1_target]}"
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
        puts "#{@clear}#{@msg[:wel2_greet]}"
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
            # puts @msg[:hinter_rule]
            puts "#{@msg[:hinter_rule]}: #{@goal[:target].length+3}"
            @hinted = true
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

        @goal[:attempts] = @goal[:answers].length
        @goal[:remaining] = @goal[:targets][0].length - @goal[:answers].length + 3

        wrongs = @goal[:answers] - @goal[:targets][0]
        wrongs.uniq!

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

        if wrongs.include?(answer)
            @fail = true
        else
            @fail = false
        end

        win = @goal[:targets][0] - rights
        puts "4 >> win.count #{win.count}"

        if win.count == 0
            @win = true
        end

        score = {secret: displays.join(" "),
            points: rights.count*10,
            right: rights.join(" "),
            wrong: wrongs.join(" "),
            total: @goal[:answers].join(" "),
            attempts: @goal[:attempts],
            remaining: @goal[:remaining]
        }
        umpire(score)
    end

    def umpire(score)
        if @win
            puts "#{@msg[:ump_win_msg]} #{@goal[:target]}"
            score_printer(score)
            return
        end

        if score[:remaining] == 0
            puts "#{@msg[:ump_0_msg]} #{(score[:attempts])}"
            puts "The Secret Word is: #{@goal[:target]}"
            score_printer(score)
            return
        end

        if !@fail
            puts "#{@msg[:ump_success_msg]} #{@goal[:remaining]}"
            score_printer(score)
            hinter
        else
            puts "#{@msg[:ump_fail_msg]} #{@goal[:remaining]}"
            score_printer(score)
            hinter
        end
    end

    def score_printer(score)
        puts "\n\nSecret Word: #{score[:secret]}\n\n"
        puts "ScoreBoard..."
        puts "Point Total: #{score[:points]}"
        puts "Correct Letters: #{score[:right]}"
        puts "Wrong Letters: #{score[:wrong]}"
        puts "Total Letters Entered: #{score[:total]}"
        puts "Total Attempts: #{score[:attempts]}"
        puts "Remaining Attempts: #{score[:remaining]}"
    end

    def voweler(str)
        str.scan(/[aeoui]/).count
    end

end

game1 = SoloGame.new("Adam", "Gahee")
game1.welcome_p1
game1.welcome_p2
