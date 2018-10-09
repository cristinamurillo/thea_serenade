
require_relative 'config/environment'


def spanish_poem
    puts "\nSana sana colita de rana".colorize(:green)
     sleep(3)
    puts "Eres como el sol en la savana".colorize(:green)
     sleep(3)
    puts "Si no sanas hoy, sanáras mañana".colorize(:green)
    sleep(3)
 end
 
 def english_poem
     puts "\nRoses are red".colorize(:light_red)
     sleep(2)
     puts "Violets are blue".colorize(:blue)
     sleep(2)
     puts "You are cool".colorize(:light_red)
     sleep(2)
     puts "I like you".colorize(:blue)
 end

 def portuguese_poem
    puts "\nQuando eu olho nos seus olhos".colorize(:light_red)
    sleep(3)
    puts "Eu vejo um marrom de cocô".colorize(:green)
    sleep(3)
    puts "E me lembra da fazenda".colorize(:light_red)
    sleep(3)
    puts "Onde os cavalos moram".colorize(:green)
    sleep(3)
end

def italian_poem
    puts "\nSei come l'acqua nel deserto".colorize(:yellow)
    sleep(3)
    puts "I tuoi occhi sono come pozzi neri".colorize(:yellow)
    sleep(3)
    puts "Sei più bella di una zanzara".colorize(:yellow)
    sleep(3)
end

loop do 
prompt = TTY::Prompt.new

language = prompt.select("\nIn what language would you like to be serenaded?".colorize(:cyan), ["Spanish", "English", "Italian", "Portuguese", "Exit"])

case language 
    when "Spanish"
         spanish_poem
    when "English"
        english_poem
    when "Portuguese"
        portuguese_poem
    when "Italian"
        italian_poem
    when "Exit"
        puts "👋 👋 👋"
        puts "\n"

        break 
end
end 


