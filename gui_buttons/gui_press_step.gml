/*
Put into step event of object using GUI press control
Check for press on GUI
*/
var precise_collision = false;

var pressed_now = false;
var mouseover_now = false;

for (var i = 0; i < 5; i++) {
    var colliding_instance = collision_point(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), object_index, precise_collision, false);
    if colliding_instance != noone and colliding_instance.id == id {
        if device_mouse_check_button(i, mb_left) then pressed_now = true;
        mouseover_now = true;
        break;
    }
}

_gui_press_event = true;
if pressed_now {
    event_perform(ev_mouse, ev_left_button);
    if not _gui_press_pressed { // Pressed right now
        _gui_press_pressed = true;
        if _gui_press_ready then event_perform(ev_mouse, ev_left_press);
    }
} else if _gui_press_pressed { // Released
    _gui_press_pressed = false;
    if _gui_press_ready then event_perform(ev_mouse, ev_left_release);
}

if mouseover_now and not _gui_press_mouseover {
    _gui_press_mouseover = true;
    if _gui_press_ready then event_perform(ev_mouse, ev_mouse_enter);
} else if not mouseover_now and _gui_press_mouseover {
    _gui_press_mouseover = false;
    if _gui_press_ready then event_perform(ev_mouse, ev_mouse_leave);
}
_gui_press_event = false;

if not _gui_press_ready then _gui_press_ready = true;
