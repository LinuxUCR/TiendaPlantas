use plantascaribe;

-- Inserciones en la tabla Especies
INSERT INTO Especies (Nombre, Descripcion, Cuidados, Foto1, Foto2, Precio, CantidadExistente)
VALUES
-- Achiote
('Achiote', 'Planta tropical de la que se extrae un pigmento natural rojo conocido como annatto.', 
 'Requiere pleno sol, suelo bien drenado y riego moderado.', 'Achiote.jpg.jpeg', 'Achiote2.jpg.jpeg', 15.50, 10),

-- Ackee
('Ackee', 'Fruta tropical jamaicana con semillas negras venenosas si no está madura.', 
 'Debe cultivarse en climas cálidos, con riego moderado y buen drenaje.', 'Ackee.jpg.jpeg', NULL, 20.00, 8),

-- Ajo
('Ajo', 'Planta bulbosa utilizada como condimento y con propiedades medicinales.', 
 'Requiere suelos bien drenados, exposición al sol y riego regular sin encharcar.', 'Ajo.jpg.jpeg', NULL, 8.00, 12),

-- Albahaca
('Albahaca', 'Hierba aromática utilizada en la cocina y como repelente natural.', 
 'Se cultiva mejor en interiores o exteriores con buena luz solar.', 'Albaca.jpg.jpeg', NULL, 5.50, 15),

-- Banano
('Banano', 'Fruta tropical rica en potasio y esencial en muchas dietas.', 
 'Crece en suelos ricos, con riego regular y alta humedad.', 'Banano.jpg.jpeg', 'Banano2.jpg.jpeg', 12.00, 14),

-- Cacao
('Cacao', 'Planta de la cual se producen las semillas para elaborar chocolate.', 
 'Requiere un clima húmedo, sombra parcial y riego regular.', 'Cacao.jpg.jpeg', 'Cacao2.jpg.jpeg', 25.00, 7),

-- Calalú
('Calalú', 'Planta comestible de hojas verdes similar a la espinaca en climas tropicales.', 
 'Se desarrolla mejor en suelos ricos y húmedos con riego frecuente.', 'Calalú.jpg.jpeg', NULL, 10.00, 6);

 -- Cardamomo
('Cardamomo', 'Especia aromática utilizada en alimentos y bebidas, originaria de climas tropicales.', 
 'Requiere sombra parcial, riego constante y suelo rico en materia orgánica.', 
 'Cardamomo.jpg.jpeg', NULL, 18.00, 10),

-- Chile Panameño
('Chile Panameño', 'Planta de chile con frutos picantes, usada comúnmente en la gastronomía.', 
 'Cultivar en suelos bien drenados con exposición al sol y riego moderado.', 
 'Chile_panameño.jpg.jpeg', NULL, 12.50, 8),

-- Clavo de Olor
('Clavo de Olor', 'Especia aromática obtenida de los botones florales secos del árbol de clavo.', 
 'Requiere climas tropicales, suelo fértil y riego regular.', 
 'Clavo_de_olor.jpg.jpeg', NULL, 15.00, 12),

-- Culantro
('Culantro', 'Hierba aromática similar al cilantro, utilizada en sopas y guisos.', 
 'Crece bien en climas cálidos con riego frecuente y sombra parcial.', 
 'Culantro.jpg.jpeg', NULL, 5.00, 15),

-- Cúrcuma
('Cúrcuma', 'Raíz utilizada como especia y colorante, con propiedades medicinales.', 
 'Requiere suelos húmedos, sombra parcial y riego constante.', 
 'Curcuma.jpg.jpeg', 'Curcuma2.jpg.jpeg', 22.00, 7),

-- Flor de Itabo
('Flor de Itabo', 'Flor comestible típica de regiones tropicales, conocida por su sabor amargo.', 
 'Crece en climas secos con poca necesidad de riego.', 
 'Flor_de_itabo.jpg.jpeg', NULL, 10.00, 6),

-- Fruta de Mono
('Fruta de Mono', 'Fruta tropical con pulpa dulce y aroma distintivo.', 
 'Requiere suelos bien drenados, alta humedad y riego constante.', 
 'Fruta_de_mono.jpg.jpeg', NULL, 20.00, 5),

-- Fruta de Pan
('Fruta de Pan', 'Fruta tropical con almidón, utilizada como alimento básico.', 
 'Se desarrolla mejor en climas húmedos, con riego moderado y sombra parcial.', 
 'Fruta_de_pan.jpg.jpeg', NULL, 12.00, 9),

-- Icacos
('Icacos', 'Fruta tropical pequeña, usada para preparar dulces y conservas.', 
 'Crece en suelos arenosos y salinos, con poca necesidad de riego.', 
 'Icacos.jpg.jpeg', NULL, 8.00, 13);

 -- Flor de Jamaica
('Flor de Jamaica', 'Planta tropical de la que se obtienen flores secas para infusiones y bebidas refrescantes.', 
 'Requiere climas cálidos, riego moderado y suelos bien drenados.', 
 'Jamaica.jpg.jpeg', NULL, 12.50, 10),

-- Jengibre
('Jengibre', 'Raíz aromática utilizada en la cocina y como remedio natural.', 
 'Requiere suelos ricos en materia orgánica y riego constante sin encharcar.', 
 'jengibre.jpg.jpeg', 'jengibre2.jpg.jpeg', 15.00, 8),

-- Jobo
('Jobo', 'Fruta tropical comestible con un sabor agridulce.', 
 'Crece en climas cálidos y húmedos, con riego moderado y suelos fértiles.', 
 'jobo.jpg.jpeg', NULL, 18.00, 6),

-- Laurel
('Laurel', 'Planta aromática utilizada en la cocina y como planta ornamental.', 
 'Prefiere climas templados, riego moderado y suelos bien drenados.', 
 'Laurel.jpg.jpeg', NULL, 7.00, 12),

-- Limón
('Limón', 'Fruta cítrica ácida rica en vitamina C, utilizada en alimentos y bebidas.', 
 'Requiere suelos bien drenados, exposición al sol y riego regular.', 
 'Limon2.jpg.jpeg', NULL, 5.50, 15),

-- Limones
('Limones', 'Variedad de cítricos con usos culinarios y medicinales.', 
 'Cultivar en climas cálidos con riego frecuente y suelos ricos en nutrientes.', 
 'Limones.jpg.jpeg', NULL, 6.00, 14),

-- Malanga
('Malanga', 'Raíz comestible utilizada en guisos y sopas, rica en almidón.', 
 'Requiere climas tropicales, suelos húmedos y riego constante.', 
 'Malanga.jpg.jpeg', NULL, 10.00, 9),

-- Nuez Moscada
('Nuez Moscada', 'Especia aromática obtenida de la semilla del árbol de nuez moscada.', 
 'Crece en climas cálidos y húmedos, requiere sombra parcial y riego moderado.', 
 'nuez_moscada.jpg.jpeg', NULL, 20.00, 5),

-- Orégano
('Orégano', 'Hierba aromática utilizada como condimento en múltiples platos.', 
 'Prefiere climas cálidos, exposición al sol y suelos bien drenados.', 
 'Oregano.jpg.jpeg', NULL, 4.50, 15);

 -- Pimienta Blanca
('Pimienta Blanca', 'Especia aromática con un sabor suave obtenida del fruto maduro sin cáscara.', 
 'Requiere climas cálidos, sombra parcial y riego constante.', 
 'pimienta_blanca.jpg.jpeg', NULL, 20.00, 8),

-- Pimienta Negra
('Pimienta Negra', 'Especia picante y aromática obtenida del fruto inmaduro y seco.', 
 'Crece en climas tropicales, requiere soporte para trepar y riego regular.', 
 'Pimienta_negra.jpg.jpeg', 'pimienta_negra2.jpg.jpeg', 18.00, 10),

-- Plátano
('Plátano', 'Fruta tropical almidonada utilizada en múltiples preparaciones culinarias.', 
 'Requiere suelos bien drenados, alta humedad y riego constante.', 
 'Platano.jpg.jpeg', 'Platano2.jpg.jpeg', 12.00, 14),

-- Romero
('Romero', 'Hierba aromática utilizada como condimento y en infusiones.', 
 'Prefiere climas cálidos, exposición al sol y riego moderado.', 
 'Romero.jpg.jpeg', NULL, 6.50, 15),

-- Tomillo
('Tomillo', 'Planta aromática utilizada en la cocina y con propiedades medicinales.', 
 'Requiere suelos bien drenados, riego moderado y exposición al sol.', 
 'Tomillo.jpg.jpeg', NULL, 5.00, 15),

-- Yuca
('Yuca', 'Raíz rica en carbohidratos utilizada como alimento básico en climas tropicales.', 
 'Crece en suelos arenosos y bien drenados con riego moderado.', 
 'Yuca.jpg.jpeg', 'Yuca2.jpg.jpeg', 10.00, 9);