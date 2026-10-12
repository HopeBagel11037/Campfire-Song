music = audio_create_sync_group(false)
//audio_play_in_sync_group(music,M_base)
//audio_play_in_sync_group(music,M_melody)

//audio_start_sync_group(music)


//base, melody, plucking, strumming, solo
unlocked = [[M_base,false,false],[M_melody,false,false],[M_strum_chord,false,false],[M_pluck_chord,false,false]]

alarm[0] = 600
audio_play_sound(M_ambi,2,false)