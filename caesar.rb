def caesar_cipher(phrase,nr)
    phrase.length.times do |i| 
        c = phrase[i]
        if letter?(c) then
            if(/[[:upper:]]/.match(c)) then
                if (c.ord > 'Z'.ord - nr) then
                    phrase[i] = ('A'.ord + ((c.ord + nr) % 'Z'.ord - 1)).chr
                else
                    phrase[i] = (c.ord + nr).chr
                end
                
            else
                if (c.ord > 'z'.ord - nr) then
                    phrase[i] = ('a'.ord + ((c.ord + nr) % 'z'.ord - 1)).chr
                else
                    phrase[i] = (c.ord + nr).chr
                end
            end
        end
    end
    res  = phrase
    puts res
end

def letter?(lookAhead)
    lookAhead.match?(/[[:alpha:]]/)
end

caesar_cipher("What a string!", 5)
