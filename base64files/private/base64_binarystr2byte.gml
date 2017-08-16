var binary = argument0;
var byte = 0;
for (var i = 1; i <= string_length(binary); i++){
    byte *= 2;
    byte += real(string_char_at(binary, i));
}
return byte;
