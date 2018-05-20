def acronym(sentence)
    new_sentence = []
    sentence.split("").each_with_index do |a , index|
        if index == 0 
            new_sentence << a           
        elsif sentence[index - 1] == " "
            new_sentence << sentence[index].capitalize
        elsif sentence[index - 1] == "-"
            new_sentence << sentence[index].capitalize
        end    
    end
    new_sentence
end

p acronym("Complementary metal-oxide semiconductor")
p acronym("GNU Image Manipulation Program")
p acronym("First In, First Out")
p acronym("Ruby on Rails")
p acronym("Portable Network Graphics")

