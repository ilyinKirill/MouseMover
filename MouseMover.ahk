#SingleInstance, forse

global Name := "Fucking slave"

F11::
    Mover.ShowNotification(global Name, "Eat your fucking cum")
    Mover.BotOn()
return

F12::
    Mover.ShowNotification(global Name, "Work for your dungeon master")
    Mover.BotOff() ;
return

class Mover{    
    IsOn := false
    xpos:= 0
    ypos:= 0

    BotOn(){   
	    global IsOn := true
	    While (global IsOn){
    		xpos := this.GetNewCoordinates()
            ypos := this.GetNewCoordinates()
            MouseMove, %xpos%, %ypos%
    		Sleep, 60*1000
	    }
	    return
    }

    BotOff(){
	    global IsOn := false
	    return
    }

    MoveCoursor(x, y){
        MouseMove, x, y, 0
        return
    }

    GetNewCoordinates(){
        Random, rand, 400, 1000
        return rand
    }

    ShowNotification(title, text){
        TrayTip, %title%, %text%, 2, 2
        return
    }
}