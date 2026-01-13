require 'optparse'

TASKS_FILE = 'tasks.txt'

# Crear el archivo si no existe
File.write(TASKS_FILE, "") unless File.exist?(TASKS_FILE)

options = {}

parser = OptionParser.new do |opts|
  opts.banner = "Usage: cli.rb [options]"

  opts.on("-a", "--add TASK", "Add a new task") do |task|
    options[:add] = task
  end

  opts.on("-l", "--list", "List all tasks") do
    options[:list] = true
  end

  opts.on("-r", "--remove INDEX", "Remove a task by index") do |index|
    options[:remove] = index.to_i
  end

  opts.on("-h", "--help", "Show help") do
    puts opts
    exit
  end
end

parser.parse!


if options[:add]
  File.open(TASKS_FILE, 'a') do |file|
    file.puts options[:add]
  end
  puts "Task ‘#{options[:add]}’ added."
end


if options[:list]
  tasks = File.readlines(TASKS_FILE).map(&:chomp)
  tasks.each { |task| puts task }
end

if options[:remove]
  tasks = File.readlines(TASKS_FILE).map(&:chomp)
  index = options[:remove] - 1

  if index >= 0 && index < tasks.length
    removed_task = tasks.delete_at(index)
    File.write(TASKS_FILE, tasks.join("\n") + "\n")
    puts "Task ‘#{removed_task}’ removed."
  end
end
