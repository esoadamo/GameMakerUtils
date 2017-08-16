/*
Decodes base64 string and saves it to the file
usage: base64_file_decode(filename, base64string)
returns: none
*/
var b64string = argument1;
var file_path = argument0;

var writer = file_bin_open(file_path, 1);
var binary_buff = "";
for(var i = 1; i <= string_length(b64string); i++){
    var ch = string_char_at(b64string, i);
    binary_buff += base64_char2binary(ch);
    while string_length(binary_buff) > 0 and string_length(binary_buff) % 8 == 0 or ch == "="{
        var byte = base64_binarystr2byte(string_delete(binary_buff, 9, string_length(binary_buff)));
        binary_buff = string_delete(binary_buff, 1, 8);
        file_bin_write_byte(writer, byte);
        if ch == "=" then break;
    }
    if ch == "=" then break;
}
file_bin_close(writer);
