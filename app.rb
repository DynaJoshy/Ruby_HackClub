 require_relative "manage.rb"
 require_relative "note.rb"
 module Application

     def Application.run
        menu=Menu.new
        begin
          puts " A Simple Note Application ".center(45,"#")
          puts "a) ADD"
          puts "b) DELETE"
          puts "c) SHOW ALL NOTES"
          puts "qt) QUIT"
          puts "Select:"
          choice=gets.chomp
          case choice
          when 'a' then menu.add
          end
         end while choice!='qt'
       
   end
   class Menu
    def initialise
        @manage=Manager.new
    end
    def add
        print "Note : "
        text=gets.chomp
        note=Note.new(text)
        @manage.store(note)
    end
   end
end





