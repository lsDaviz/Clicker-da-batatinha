// Verifica se você tem batatas suficientes para comprar
if (global.batatas >= global.preco_upgrade_clique) {
    
    // Deduz o preço do seu total de batatas
    global.batatas -= global.preco_upgrade_clique;
    
    // Aumenta o poder do clique (ganha +1 por clique a partir de agora)
    global.batatas_por_clique += 1;
    
    // Aumenta o preço do próximo upgrade em 50%
    global.preco_upgrade_clique = round(global.preco_upgrade_clique * 1.5);
}
