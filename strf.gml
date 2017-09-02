/*
Replaces all %s with thier corresponding values

argument0 - source string
other arguments are %s replacements
*/
var source_string = argument[0];
for(var _i = 1; _i < argument_count; _i++){
    source_string = string_replace(source_string, "%s", string(argument[_i]));
}
return source_string;
