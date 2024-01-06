/// scr_setgame(gameindex)
if global.game == argument0
{
    show_debug_message("stop")
    exit // why are you Doing this Stop
}
show_debug_message(argument0)
instance_activate_object(obj_editor)
switch argument0
{
    case 0: // crazy pickle
        // i forgot how to do backgrounds yeah
        with obj_editor
        {
            so = 0 // set the selected object index to 0, incase the new game has less objects.
            objlist = array_create(0)
            objlist[0] = obj_solid
            objlist[1] = obj_tickleablesolid
            objlist[2] = obj_player
            objlist[3] = obj_baddie
            objlist[4] = obj_collect
            objlist[5] = obj_onewaywall
            objlist[6] = obj_slope
            scr_cleanlevel()
            gridsize = 32
        }
        global.gamestr = "crzpkl" // for saving
        break
        
    case 1: // lart
        // i forgot how to do backgrounds yeah
        with obj_editor
        {
            so = 0 // set the selected object index to 0, incase the new game has less objects.
            objlist = array_create(0)
            objlist[0] = objSolid_lart
            objlist[1] = objPlayer_lart
            objlist[2] = objTopSolid_lart
            scr_cleanlevel()
            gridsize = 16
        }
        global.gamestr = "lart" // for saving
        break
}
global.game = argument0
