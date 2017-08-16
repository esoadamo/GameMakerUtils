/*
Splits string by prefix, optionally with maximum entries
argument[0] - string to split
argument[1] - split character
(argument2) - optional, maximum split number  -- TODO, not very working right now
returns: array with splited strings
*/
var tmp_str_buffer, returnArray, arrayIndex, i, split_first_char, max_index;
tmp_str_buffer="";
returnArray[0] = "";
arrayIndex = 0;
split_first_char = string_char_at(argument[1], 1);
max_index = string_length(argument[0]);
for(i = 1; i <= max_index; i++){
    returnArray[arrayIndex] = "";
    if(string_char_at(argument[0], i) == split_first_char){
        var max_index1 = string_length(argument[1]);
        var split_it = true;
        for(var i1 = 1; i1 <= max_index1; i1++){
            if(i + i1 - 1 > string_length(argument[0])){
                split_it = false;
                break;
            }
            if(string_char_at(argument[1], i1) != string_char_at(argument[0], i1 + i - 1)){
                split_it = false;
                break;
            }
        }
        
        if( not split_it ) then continue;
        
        i += max_index1 - 1;
        
        returnArray[arrayIndex] = tmp_str_buffer;
        tmp_str_buffer = "";
        arrayIndex++;
        if((argument_count > 2) and (arrayIndex >= argument[2])){
            arrayIndex--;
            returnArray[arrayIndex] += argument[1];
        }
    } else tmp_str_buffer += string_char_at(argument[0], i);
}
returnArray[arrayIndex] = tmp_str_buffer;

return returnArray;
