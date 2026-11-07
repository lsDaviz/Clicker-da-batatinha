sprite_index = upgrade_clickado
// Garante que a batata principal existe na sala para não dar erro
if (instance_exists(O_batata)) {
    
    var _id = minha_skin; // Pega o ID que configuramos (1 para patinho, 2 para rica)
    var _preco = O_batata.skins_precos[_id];
    
    // CASO 1: O jogador já comprou essa skin antes, então apenas equipa ela
    if (O_batata.skins_compradas[_id] == true) {
        O_batata.skin_atual = _id;
        O_batata.sprite_index = O_batata.sprites_parado[_id];
    } 
    // CASO 2: A skin está trancada, vamos tentar comprar
    else {
        // Se o jogador tiver cliques/batatas suficientes
        if (global.batatas >= _preco) {
            global.batatas -= _preco; // Tira o preço do saldo do jogador
            O_batata.skins_compradas[_id] = true; // Desbloqueia a skin para sempre
            
            // Equipar a skin nova automaticamente
            O_batata.skin_atual = _id;
            O_batata.sprite_index = O_batata.sprites_parado[_id];
            
         
             event_perform(ev_other, ev_user0); 
        } else {
            draw_text(x,y +50,"voce nao tem grana")
        }
    }
}
