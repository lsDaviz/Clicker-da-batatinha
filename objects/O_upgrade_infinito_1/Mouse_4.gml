// Verifica se você tem batatas suficientes para comprar
if (global.batatas >= global.preco_upgrade_infinito) {
    
    // Deduz o preço do seu total de batatas
    global.batatas -= global.preco_upgrade_infinito;
	// AUMENTA O PODER DO GANHO POR SEGUNDO 
	global.upgrade_infinito += 1; 
    // Aumenta o preço do próximo upgrade em 50%
    global.preco_upgrade_infinito = round(global.preco_upgrade_infinito * 1.5);
}
