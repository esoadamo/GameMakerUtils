# Game Maker Utilities
I found those scripts very useful

## Included scripts

### HTML5Resize

Resizes window to cover 100% of browser

### string_split

splits a string into array by some character

### multi_touch

targeted on mobile platform, this will check if any of user's fingers is touching this object

### strf
replaces all %s in string with passed arguments
example: show_debug_message(strf("My number: %s", 42))

### string_startsWith

tests if string starts with a prefix

### base64files/

can encode and decoded binary files to/from base64

### gui_buttons/

this scripts reacts on button presses from Draw GUI event. Up to 5 fingers at time supported.
Call gui_press_step from step event, gui_press_create from create event, but **COPY** content of gui_press_event into every mouse event
