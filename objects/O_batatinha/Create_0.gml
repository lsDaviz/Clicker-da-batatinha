//começa a musica e se outra ja estivesse tocando ele nao toca
if (!audio_is_playing(So_musica)) {
    audio_play_sound(So_musica, 1, true);
}

 