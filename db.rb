require 'pstore'
class Database
def Initialise
    @store=PStore.new("notes.store")
end
def store(note)
    @store.transaction do
    @store[note.id.to_sym]=note
    end
    end
end