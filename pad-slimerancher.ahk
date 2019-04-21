
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

;;; For "Slime Rancher"
; Change slot 1..4
~*1::SoundPlay, sounds\ADV_AJ_anatato.wav
~*2::SoundPlay, sounds\ADV_AJ_java.wav
~*3::SoundPlay, sounds\ADV_ID_imasugu.wav
~*4::SoundPlay, sounds\ADV_ID_download.wav 
; Water Slot
~*5::RandomPlay("sounds\ADV_DFJ%_muryo.wav", 1, 2) 

; Shoot(Left Click)
~*LButton::
    LButtonUp := false
    LButtonFirstSound := true
    SoundPlay, sounds\ACT_JABABABA2_ja.wav, WAIT
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

; Vacume(Right Click)
~*RButton::
    SoundPlay, sounds\ADV_IDLO.wav
Return
~*RButton Up::SoundPlay, sounds\ACT_D.wav

; Interact
~*E::RandomPlay("sounds\OP_lookup%.wav", 0, 1, 1)

; Menu or Cancel
~*Esc::RandomPlay("sounds\NOTJAVA_%.wav", 1, 3)


; Pulse Wave
~*Q::RandomPlay("sounds\UNCHI_%.wav", 0, 4, 1)

; Jump & Hover (Default keybind: "SPACE")
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

; Gadget Mode
~*T::SoundPlay, sounds/ADV_UMU.wav

; Flashlight
~*F::SoundPlay, sounds/OP_song.wav, WAIT

; Map  (Default keybind: "M")
~*M::
~*C::
~*B::
    SoundPlay, sounds\ADV_DDK_download-kaishi.wav, WAIT
Return
