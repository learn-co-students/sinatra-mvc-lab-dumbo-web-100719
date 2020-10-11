class PigLatinizer

    attr_reader :text

    def initialize()
        @text = text
    end

    def piglatinize(text)
        arr = text.split(' ')
        arr2 = []
        arr.each do |ele|
            if ele[0].start_with?(/[^aAeEiIoOuUyY]/) && ele[1].start_with?(/[^aAeEiIoOuUyY]/) && ele[2].start_with?(/[^aAeEiIoOuUyY]/)
                latinized_consonant_cluster_3 = ele + ele[0] + ele[1] + ele[2] + "ay"
                3.times do
                    latinized_consonant_cluster_3[0] = ''
                end
                arr2 << latinized_consonant_cluster_3
            elsif    
                ele[0].start_with?(/[^aAeEiIoOuUyY]/) && ele[1].start_with?(/[^aAeEiIoOuUyY]/)
                latinized_consonant_cluster = ele + ele[0] + ele[1] + "ay"
                latinized_consonant_cluster[0] = ''
                latinized_consonant_cluster[0] = ''
                arr2 << latinized_consonant_cluster
            elsif 
                ele[0].start_with?(/[^aAeEiIoOuUyY]/)
                latinized_consonant = ele + ele[0] + "ay"
                latinized_consonant[0] = ''
                arr2 << latinized_consonant
            else
                latinized_vowel = ele + "way"
                arr2 << latinized_vowel
            end
        end
        arr2.join(' ')
    end

end 


