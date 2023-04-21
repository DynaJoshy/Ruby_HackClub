require 'securerandom'
puts SecureRandom.uuid
class Note
    attr_reader:id
    def Initialise(text)
        @id=SecureRandom.uuid
        @text=text
        @date=Time.Now
    end
end