class  Bottles

    attr_reader :amount

    def initialize()
    end

    def song
        verses(99, 0)
    end

    def verse(amount)
        str = mount(amount)
    end

    def verses(start, finish)
        i = start
        can = false
        verses = ""
        while i >= finish
            str = mount(i)
            if can
                verses += "\n"
            end

            verses += str
            can = true
            i -= 1
        end

        verses
    end

    def mount(amount)
        first_verse(amount) + second_verse(amount-1)
    end

    def first_verse(amount)
        plural = amount == 1 ? '' : 's'

        if amount > 0
            "#{amount} bottle#{plural} of beer on the wall, #{amount} bottle#{plural} of beer.\n"
        else
            "No more bottles of beer on the wall, no more bottles of beer.\n"
        end
    end

    def second_verse(amount)
        if amount > 0
            plural= amount == 1 ? '' : 's'
            "Take one down and pass it around, #{amount} bottle#{plural} of beer on the wall.\n"
        elsif amount == 0
            "Take it down and pass it around, no more bottles of beer on the wall.\n"
        else
            "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        end
    end
end
