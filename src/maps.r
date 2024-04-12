#install.packages("sf")
#install.packages("ggplot2")


library(sf)
library(ggplot2)

# Cargar el shapefile
municipios <- st_read("C:/Git/mapas/input/1.dane/datos/MGN_MPIO_POLITICO.shp")

# Crear el mapa con detalles adicionales
ggplot(data = municipios) +
  geom_sf(fill = "lightblue", color = "black") + # Colores básicos, cambia según necesidad
  labs(title = "Mapa de Municipios Políticos", subtitle = "Colombia") +
  theme_minimal() +
  theme(text = element_text(size = 12)) + # Ajusta el tamaño de texto aquí
  scale_fill_viridis_d() # Escala de colores opcional

print(mapa)