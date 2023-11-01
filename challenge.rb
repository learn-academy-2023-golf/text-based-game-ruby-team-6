

loop do
    # Who killed Mr. LEARN
# Introduction
puts "A man is found murdered on a Sunday morning. His wife calls the police, who question the wife and the staff, and are given the following alibis:"
puts "Welcome to the Murder Mystery Game!"
puts "You are the detective investigating a murder case."
puts "There are four suspects. Your task is to find the murderer."


# Suspects


suspects = ["Jerrod", "Patsy", "Derek"]
murderer = suspects.sample
puts "The suspects are: #{suspects.join(', ')}"

# Story

puts "Our murder story begins: A murder has occurred at a remote mansion."
puts "The victim's name was Mr. LEARN."
puts "You will be given some clues, find and solve the case. You need to find the murderer."

# Clues

puts "You discover three clues at the crime scene:"
clues = [
  "Clue 1: There's a bloody knife on the floor.",
  "Clue 2: The victim's phone is missing.",
  "Clue 3: There's a strange note that reads, 'You will pay for your sins.'"
]
clues.each { |clue| puts clue }

# Investigate

puts "It's time to interrogate the suspects."
puts "You have to ask them three questions each."



# Questioning suspects

suspects.each do |suspect|
    puts "\nQuestioning #{suspect}..." 
  
    puts "What were you doing at the time of the murder?" 
    alibi = gets.chomp
  
    puts "Where were you last night?"
    whereabouts = gets.chomp
    
    puts "Do you know anything about the murder?"
    knowledge = gets.chomp
  
    puts "Did you have any conflicts with the victim?"
    conflicts = gets.chomp
  
    puts "Were there any witnesses to your whereabouts?"
    witnesses = gets.chomp
  
    # Analyze their answers
  
    if alibi.downcase.include?("asleep") &&
       whereabouts.downcase.include?("nowhere") &&
       !knowledge.downcase.include?(murderer.downcase) &&
       conflicts.downcase.include?("no") &&
       witnesses.downcase.include?("yes")
      puts "#{suspect} seems suspicious!" 
    end
  end


# Reveal the murderer

puts "\nYou've gathered all the information. Time to reveal the murderer!"


# Conclusion

if murderer.downcase == "jerrod"
  puts "You solved the case! The murderer is #{murderer}."
  puts "Congratulations, Detective!"
else
  puts "You accused the wrong person! The real murderer is still on the loose."
  puts "Better luck next time, Detective."
end
  
    puts "\nWould you like to play again? (yes/no)"
    play_again = gets.chomp.downcase
  
    if play_again == "no"
      puts "Thank you for playing! Goodbye."
      break
    elsif play_again != "yes"
      puts "Invalid input. Exiting the game."
      break
    end
  end

  def display_ascii_art 
    puts File.read("/Users/learnacademy/Desktop/text-based-game-ruby-team-6/face.txt")
  end

  display_ascii_art
  