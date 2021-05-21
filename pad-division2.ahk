
; One
#SingleInstance Force

; Daemonize
#Persistent

; Prevent warnings on long press
#MaxHotkeysPerInterval 70

; Press Win key to reload this script
#z::Reload

; Play random sound ("foo%.wav", 0, 4)
RandomPlay(Filename, Min, Max, SoundOption = 0)
{
    Random, Num, Min, Max
    NewFilename := StrReplace(Filename, "%", Num)
    SoundPlay, %NewFilename%, %SoundOption%
}

;;; For "The Division 2"
; Change Weapon 1..5
~*1::SoundPlay, sounds\ADV_AJ_anatato.wav
~*2::SoundPlay, sounds\ADV_AJ_java.wav
~*3::SoundPlay, sounds\ADV_ID_imasugu.wav
~*4::SoundPlay, sounds\ADV_ID_download.wav 
;~*5::RandomPlay("sounds\ADV_DFJ%_muryo.wav", 1, 2) 

; Shoot(Left Click)
~*LButton::
    LButtonUp := false
    LButtonFirstSound := true
    SoundPlay, sounds\ADV_AJ_java.wav, WAIT
    LButtonFirstSound := false
    If (LButtonUp == false) {
        SoundPlay, sounds\ACT_JABABABA2_bababa.wav
    }
Return
~*LButton Up::
    LButtonUp := true
    if (!LButtonFirstSound) {
        SoundPlay, Nonexistent
    }
Return

; Aim(Right Mouse Button)
~*RButton::
    SoundPlay, sounds\ADV_AJ_anatato.wav
Return
;~*RButton Up::SoundPlay, sounds\ACT_D.wav

; Interact
~*F::RandomPlay("sounds\OP_lookup%.wav", 0, 1, 1)

; Menu or Cancel
~*Esc::RandomPlay("sounds\NOTJAVA_%.wav", 1, 3)

; Use Skill 1
;~*Q::SoundPlay, sounds\ADV_AJ_anatato.wav
~*Q::
    if (!Skill1ButtonHold) {
        Skill1ButtonHold := true
        RandomPlay("sounds\ADV_DFJ%_muryo.wav", 1, 2), WAIT
    }
Return
~*Q Up::
    Skill1ButtonHold := false
Return
; Use Skill 2
;~*E::SoundPlay, sounds\ADV_ID_imasugu.wav
~*E::
    if (!Skill2ButtonHold) {
        Skill2ButtonHold := true
        SoundPlay, sounds\ADV_ID_download.wav, WAIT
    }
Return
~*E Up::
    Skill2ButtonHold := false
Return

; Reload 
~*R::SoundPlay, sounds\ADV_DDK_download-kaishi.wav


; Grenade (Default is "G")
~*MButton Up::RandomPlay("sounds\UNCHI_%.wav", 0, 4, 1)
; Melee (Default is "Tab")
~*G::RandomPlay("sounds\UNCHI_%.wav", 0, 4, 1)
~*Tab::RandomPlay("sounds\UNCHI_%.wav", 0, 4, 1)

; Use Cover (Default keybind: "SPACE")
~*Space::  
;~*MButton::
    IsInHover := True

    Random, StartSound, 1, 4
    Random, LoopSound, 0, 2

    SoundPlay, sounds\JAVA_%StartSound%.wav, WAIT
    While (IsInHover)
    {
        SoundPlay, sounds\OP-javajavajava%LoopSound%.wav, WAIT
    }
Return
~*Space Up::
;~*MButton Up::
    IsInHover := False
Return

; Dash
;~*Shift::SoundPlay, sounds/OP_song.wav, WAIT

; Inventory (Default keybind: "I")
~*I::
~*T::
    SoundPlay, sounds/ADV_UMU.wav
Return

; Map  (Default keybind: "M")
~*M::
~*C::
~*B::
    SoundPlay, sounds\ADV_UMU.wav, WAIT
Return
