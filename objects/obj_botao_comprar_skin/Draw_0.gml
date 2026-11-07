// 1. Faz o botão se desenhar normalmente na tela
draw_self();

// 2. Verifica se a batata existe para checar a lista de compras
if (instance_exists(O_batata)) {
    
    var _id = minha_skin; // Pega o ID que configuramos (0, 1 ou 2)
    
    // Se a skin deste botão AINDA NÃO foi comprada (for igual a false)
    if (O_batata.skins_compradas[_id] == false) {
        
        // Desenha o cadeado exatamente no centro deste botão
        // (x e y são as coordenadas onde você arrastou o botão na sala)
        draw_sprite(botao_fechado, 0, x, y);
        
    }
}
