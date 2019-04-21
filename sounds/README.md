# Sounds

## Workflow with `Audacity`

1. Do `Split Stereo to Mono` and remove one track.
1. `Effect` -> `Normalize...`.(-10DB ... -5DB)
1. `Effect` -> `Noise Reduction` if needed.
    1. Select noisy period.
    1. `Effect` -> `Noise Reduction`. Click `Get Noise Profile`.
    1. Select all.
    1. `Effect` -> `Noise Reduction`. Set configs and click OK.
        * Noise reduction(db): `5`..`11`
        * Sensitivity: `10.00`
        * Frequency smoothing (bands): `0`
        * Noise: `Reduce`
1. Select period you need and `Edit` -> `Remove Special` -> `Trim Audio`(`Ctrl-T`).
1. Export with wav. (signed 16-bit PCM, 44100Hz)

    📝 This is for reducing file size.

## Files

Following sounds edited from [java-sound/j2017]

* ACT_D.wav
* ACT_JABABABA2.wav
* ACT_JABABABA2_bababa.wav
* ACT_JABABABA2_ja.wav
* ADV_AJ_anatato.wav
* ADV_AJ_java.wav
* ADV_DDK_download-kaishi.wav
* ADV_DFJ1_muryo.wav
* ADV_DFJ2_muryo.wav
* ADV_IDLO.wav
* ADV_ID_download.wav
* ADV_ID_imasugu.wav
* ADV_UMU.wav
* JAVA_1.wav
* JAVA_2.wav
* JAVA_3.wav
* JAVA_4.wav
* NOTJAVA_1.wav
* NOTJAVA_2.wav
* NOTJAVA_3.wav
* OP-javajavajava0.wav
* OP-javajavajava1.wav
* OP-javajavajava2.wav
* OP_lookup0.wav
* OP_lookup1.wav
* OP_song.wav
* UNCHI_0.wav
* UNCHI_1.wav
* UNCHI_2.wav
* UNCHI_3.wav
* UNCHI_4.wav

[java-sound/j2017]: https://gitlab.com/arigato-java/java_sound/tree/master/src/com/java/sound/j2017