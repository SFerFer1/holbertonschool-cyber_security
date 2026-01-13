require 'json'
def merge_json_files(file1_path, file2_path)

    content1 = File.read(file1_path)
    content2 = File.read(file2_path)

    data1 = JSON.parse(content1)
    data2 = JSON.parse(content2)

    merged_data = data1 + data2

    merged_data

end