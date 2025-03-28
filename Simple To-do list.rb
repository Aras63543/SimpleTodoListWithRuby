tasks = []

loop do
  print 'Choose an action (1: Add, 2: Show, 3: Exit): ' 
  action = gets.chomp

  if action == '1'
    print 'Enter a task: '
    task = gets.chomp
    tasks << task
    puts 'You have added a task: ' + task
  elsif action == '2'
    puts 'Here are your tasks:'
    tasks.each_with_index do |task, index|
      puts "#{index + 1}: #{task}"
    end
  elsif action == '3'
    puts 'Exiting the program.'
    break
  else 
    puts 'Invalid action. Please choose 1, 2, or 3.'
  end
end
