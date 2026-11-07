draw_self(); // Desenha a imagem/sprite do botão


draw_text(x + 38, y - 20 , "Quer mais batatas?"+" nivel " +string(global.nivel_upgrade_click));
draw_text(x + 38, y, "click aqui! Custo: " + string(global.preco_upgrade_clique));
draw_set_color(c_black); // Define a cor do texto para branco