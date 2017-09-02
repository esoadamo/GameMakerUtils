/// Allow only GUI press
/*
COPY this code into every used mouse event in your object. Executing script does not work.
Checks that object has been pressed from GUI
*/
if not _gui_press_event then exit;
