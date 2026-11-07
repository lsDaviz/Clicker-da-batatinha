skin_atual = 0; 
total_skins = 3;

// Listas com as suas sprites exatas
sprites_parado = [batata__normal, batata_patinho, batata_rica];
sprites_clique = [batata_clicada, batata_clicada_patinho, batata_clicada_rica];

// Sistema de Loja e Salvamento
// [0] = Normal, [1] = Patinho, [2] = Rica
skins_compradas = [true, false, false]; // A normal já começa comprada (true)

// Preço de cada skin
skins_precos = [0, 500, 1000]; 

// Sua variável de cliques (se já tiver uma global, use a sua) 

sprite_index = sprites_parado[skin_atual];
