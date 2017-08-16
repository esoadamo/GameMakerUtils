var num = argument0;
var binary = "";
while num > 0 {
    binary = string(num % 2) + binary;
    num /= 2;
    num = floor(num);
}
while string_length(binary) < 8 {
    binary = "0" + binary;
}
return binary;
