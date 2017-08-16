/*
Checks if string starts with a prefix
argument0 - source string
argument1 - prefix
return - true if source starts with prefix, flase otherwise
*/

if(string_length(argument0) < string_length(argument1)) //Source is shorter than prefix
    return false;

for(i = 1; i <= string_length(argument1); i++){
    if(string_char_at(argument0, i) != string_char_at(argument1, i))
        return false;
}

return true;
