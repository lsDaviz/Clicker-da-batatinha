draw_self(); // Desenha a imagem/sprite do botão

draw_set_color(c_black); // Define a cor do texto para branco
draw_text(x + 66, y + 10, "Quer mais batatas?");
draw_text(x + 66, y + 30, "click aqui! Custo: " + string(global.preco_upgrade_clique));
