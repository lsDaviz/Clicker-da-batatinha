// Adiciona o valor do upgrade por segundo ao seu total de batatas
global.batatas += global.upgrade_infinito;
// Reinicia o alarme para rodar novamente daqui a 1 segundo
alarm[0] = game_get_speed(gamespeed_fps);
