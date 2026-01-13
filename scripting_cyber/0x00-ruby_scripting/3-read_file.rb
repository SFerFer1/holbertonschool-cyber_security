require 'json'

def count_user_ids(path)
content = File.read(path)
data = JSON.parse(content)

count = 0

data.each do |i|
  count += 1 if i.key?("userId")
end

return count

end