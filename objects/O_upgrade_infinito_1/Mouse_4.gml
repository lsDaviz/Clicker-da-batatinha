sprite_index = upgrade_clickado 

// Verifica se você tem batatas suficientes para comprar
// Verifica se a variável do nível existe por segurança, se não existir, ela começa em 1
if (!variable_global_exists("nivel_upgrade_infinito")) {
    global.nivel_upgrade_infinito = 1
}

if (global.batatas >= global.preco_upgrade_infinito) {
    // Cobra o preço
    global.batatas -= global.preco_upgrade_infinito;
	audio_play_sound(So_botao_pagado,10,false)
    
    // Avança o nível
    global.nivel_upgrade_infinito += 1;
    
    // --- VERIFICAÇÃO EXATA DOS NÍVEIS ---
    
    // Se o nível acabou de virar 10 (exatamente na 9ª compra)
    if (global.nivel_upgrade_infinito == 10) {
        global.upgrade_infinito += 16; // Super bônus
        
        // Ativa a parede de ouro (ajuste os nomes se forem diferentes no seu projeto)
        if (instance_exists(O_caixa_para_upgrade_infinito)) {
            O_caixa_para_upgrade_infinito.sprite_index = caixa_para_upgrade_ouro;
        }
		//tira uma musica e coloca a outra
		audio_play_sound(So_melhoria_de_upgrade, 10, false);
		audio_pause_sound(So_musica)
		alarm[0] = room_speed * 13
    }
    // Se ainda não chegou no 10 (níveis 2, 3, 4, 5, 6, 7, 8, 9)
    else if (global.nivel_upgrade_infinito < 10) {
        global.upgrade_infinito += 2; // Evolução normal
    }
    // Se já passou do nível 10 (níveis 11, 12, 13...)
    else {
        global.upgrade_infinito += 4; // Evolução pós-ouro
    }
    
    // Atualiza o preço para o próximo nível
    global.preco_upgrade_infinito = round(global.preco_upgrade_infinito * 1.5);
}else{
	audio_play_sound(So_botao_erro,10,false)
}
