/// scr_setgame(gameindex)
if global.game == argument0
{
    show_debug_message("stop")
    exit // why are you Doing this Stop
}
show_debug_message(argument0)
instance_activate_object(obj_editor)
instance_destroy(obj_settingselect)
switch argument0
{
    default:
        show_message("ERROR: Invalid game, corrupt level file?")
        exit

    case 0: // crazy pickle
        // i forgot how to do backgrounds yeah
        background_index[0] = bg_editor
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
        background_index[0] = bg_lart
        with obj_editor
        {
            so = 0 // set the selected object index to 0, incase the new game has less objects.
            objlist = array_create(0)
            objlist[0] = objSolid
            objlist[1] = objPlayer
            objlist[2] = objTopSolid
            objlist[3] = objCrate
            objlist[4] = objCoinCrate
            objlist[5] = objCoin
            objlist[6] = objEnemy
            objlist[7] = objCrazyPalank
            objlist[8] = objLongRSlope
            objlist[9] = objRSlope
            objlist[10] = objSpring
            objlist[11] = objBall
            objlist[12] = objSausageBoy
            scr_cleanlevel()
            gridsize = 16
        }
        global.gamestr = "lart" // for saving
        break
        
    case 3:
        game_end()
        break
}
global.game = argument0
