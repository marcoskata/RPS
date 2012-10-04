defeat = { :rock => :scissors, :paper => :rock, :scissors => :paper}
throws = defeat.keys

player_throw = (ARGV.shift || '').to_sym

raise ScriptError, "Tu debes ejecutar: ''#{$0}'' con alguna de las siguientes opciones '#{throws.join(', ')}'" unless throws.include? player_throw

computer_throw = throws.sample

if player_throw == computer_throw 
  answer = "Hay un empate¡¡¡"
elsif player_throw == defeat[computer_throw]
  answer = "Pierdes; #{computer_throw} pierde #{player_throw}"
else
  answer = "Muy bien. #{player_throw} Gana #{computer_throw}"
end
puts answer
