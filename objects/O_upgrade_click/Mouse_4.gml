// Verifica se a variável do nível existe por segurança, se não existir, ela começa em 1
if (!variable_global_exists("nivel_upgrade_clique")) {
    global.nivel_upgrade_clique = 1;
}

if (global.batatas >= global.preco_upgrade_clique) {
    // Cobra o preço
    global.batatas -= global.preco_upgrade_clique;
    
    // Avança o nível
    global.nivel_upgrade_clique += 1;
    
    // --- VERIFICAÇÃO EXATA DOS NÍVEIS ---
    
    // Se o nível acabou de virar 10 (exatamente na 9ª compra)
    if (global.nivel_upgrade_clique == 10) {
        global.batatas_por_clique += 16; // Super bônus
        
        // Ativa a parede de ouro (ajuste os nomes se forem diferentes no seu projeto)
        if (instance_exists(O_caixa_para_upgrade_click)) {
            O_caixa_para_upgrade_click.sprite_index = caixa_para_upgrade_ouro;
        }
		//tira uma musica e coloca a outra
		audio_play_sound(So_melhoria_de_upgrade, 10, false);
		audio_pause_sound(So_musica)
		alarm[0] = room_speed * 13
    }
    // Se ainda não chegou no 10 (níveis 2, 3, 4, 5, 6, 7, 8, 9)
    else if (global.nivel_upgrade_clique < 10) {
        global.batatas_por_clique += 1; // Evolução normal
    }
    // Se já passou do nível 10 (níveis 11, 12, 13...)
    else {
        global.batatas_por_clique += 3; // Evolução pós-ouro
    }
    
    // Atualiza o preço para o próximo nível
    global.preco_upgrade_clique = round(global.preco_upgrade_clique * 1.5);
}
