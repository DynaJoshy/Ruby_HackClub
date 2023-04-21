require_relative"db.rb"
class Manage
    def Initialise
        @db=Database.new
    end
    def store(note)
    @db.store(note)
    end
end