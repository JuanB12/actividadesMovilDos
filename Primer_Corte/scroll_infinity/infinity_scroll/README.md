# infinity_scroll

Este proyecto es una demostración de cómo implementar el infinite scroll de Gifs utilizando una API en Flutter. Se utiliza el paquete Screen/Gifs_Pages.dart para implementar la funcionalidad de infinite scroll.

## Getting Started

El proyecto utiliza la dependencia http para realizar una solicitud HTTP GET al punto final de la API y obtener una lista de Gifs. El paquete providers/Gif_provider.dart se utiliza para implementar el consumo del API. 

El paquete Screen/Gifs_Pages.dart se utiliza para implementar la funcionalidad de infinite scroll, cuya clase GifPages es la responsable de obtener los Gifs desde el punto final de la API. En el archivo main.dart el cual se encarga de correr el programa.