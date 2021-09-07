def fromRoman(romanNumber)

    if romanNumber == romanNumber.downcase
        raise TypeError
    end
    arrayOfRomanNumbers = []
    arrayOfRomanNumbers = romanNumber.split(//)
    total = 0

    x = 0
    while x != arrayOfRomanNumbers.length do

        if arrayOfRomanNumbers[x] == "M"
            x=x+1
            total = total + 1000

        elsif arrayOfRomanNumbers[x] == "D"
            x=x+1
            total = total + 500
            

        elsif arrayOfRomanNumbers[x] == "C"
            x=x+1
            if arrayOfRomanNumbers[x] == "M" #
                total = total + 900
                x=x+1
            elsif arrayOfRomanNumbers[x] == "D" #
                total = total + 400
                x=x+1
            else
                total = total + 100
            end   

        elsif arrayOfRomanNumbers[x] == "L"
            x=x+1
            total = total + 50 

        elsif arrayOfRomanNumbers[x] == "X"
            x=x+1
            if arrayOfRomanNumbers[x] == "C" #
                x=x+1
                total = total + 90
            elsif arrayOfRomanNumbers[x] == "L" #
                x=x+1
                total = total + 40
            else
                total = total + 10
            end

        elsif arrayOfRomanNumbers[x] == "V"
            x=x+1
            total = total + 5

        elsif arrayOfRomanNumbers[x] == "I"
            x=x+1
            if arrayOfRomanNumbers[x] == "X" #
                x=x+1
                total = total + 9
            elsif arrayOfRomanNumbers[x] == "V" #
                x=x+1
                total = total + 4
            else
                total = total + 1
            end

        elsif x == arrayOfRomanNumbers.length
            break
        else
            raise TypeError
        end
    end
    return total
end

def toRoman(arabicNumber)
    array = []

    if arabicNumber > 3999 
        raise RangeError
    end

    if arabicNumber <= 0
        raise RangeError
    end

    while arabicNumber!=0 do
        if arabicNumber >= 1000
            arabicNumber = arabicNumber - 1000
            array.append("M")
        elsif arabicNumber >= 900
            arabicNumber = arabicNumber - 900
            array.append("CM")
        elsif arabicNumber >= 500
            arabicNumber = arabicNumber - 500
            array.append("D")
        elsif arabicNumber >= 400
            arabicNumber = arabicNumber - 400
            array.append("CD")
        elsif arabicNumber >= 100
            arabicNumber = arabicNumber - 100
            array.append("C")
        elsif arabicNumber >= 90
            arabicNumber = arabicNumber - 90
            array.append("XC")
        elsif arabicNumber >= 50
            arabicNumber = arabicNumber - 50
            array.append("L")
        elsif arabicNumber >= 40
            arabicNumber = arabicNumber - 40
            array.append("XL")
        elsif arabicNumber >= 10
            arabicNumber = arabicNumber - 10
            array.append("X")
        elsif arabicNumber >= 9
            arabicNumber = arabicNumber - 9
            array.append("IX")
        elsif arabicNumber >= 5
            arabicNumber = arabicNumber - 5
            array.append("V")
        elsif arabicNumber >= 4
            arabicNumber = arabicNumber - 4
            array.append("IV")
        elsif arabicNumber >= 1
            arabicNumber = arabicNumber - 1
            array.append("I")
        else 
            break
        end
    end
    fullRoman = array.join('')
    return fullRoman
end