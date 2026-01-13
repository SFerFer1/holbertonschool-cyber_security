require 'digest'

def crack_password
  if ARGV.length != 2
    puts "Usage: 10-passwordcracked.rb HASHEDPASSWORD DICTIONARY_FILE"
    return
  end

  target_hash = ARGV[0]
  dictionary_file = ARGV[1]

  File.foreach(dictionary_file) do |line|
    word = line.strip
    hashed_word = Digest::SHA256.hexdigest(word)

    if hashed_word == target_hash
      puts "Password found: #{word}"
      return
    end
  end

  puts "Password not found in dictionary."
end

crack_password
