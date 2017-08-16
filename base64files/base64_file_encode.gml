/*
Encodes file to base64 string
usage: base64_file_encode(filename)
returns: string
*/
var file_path = argument0;
var reader = file_bin_open(file_path, 0);
var file_size = file_bin_size(reader);
var base64 = "";
for (var i = 0; i < file_size; i=i) {
    var count_reading_bytes = min(3, file_size - i);
    var buff_binary = "";
    for (var ii = 0; ii < count_reading_bytes; ii++){
        var byte = file_bin_read_byte(reader);
        buff_binary += base64_byte2binarystr(byte);
        i++;
    }
    for (var ii = count_reading_bytes; ii < 3; ii++){
        buff_binary += "0000000";
    }
    for (var ii = 0; ii < 4; ii++){
        if count_reading_bytes >= ii then base64 += base64_binary2char(real(string_delete(buff_binary, 7, string_length(buff_binary))));
        else base64 += "=";
        buff_binary = string_delete(buff_binary, 1, 6);
    }
}
return base64;

