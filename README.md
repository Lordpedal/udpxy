# UDPXY Docker - [Overclock Server](https://lordpedal.github.io)

## Modos de ejecución para crear el contenedor Docker

### docker-compose (*Opción recomendada*)

Compatible con los esquemas docker-compose v2.

```
version: "2"
services:
  udpxy:
    image: lordpedal/udpxy
    container_name: UDPXY
    network_mode: host
    restart: always
```

### docker-cli

```
docker run -d \
        --name UDPXY \
        --network host \
        --restart always \
        lordpedal/udpxy
```

## Parámetros

Las imágenes de contenedor se configuran utilizando parámetros pasados en tiempo de ejecución (como los anteriores). 
Estos parámetros están separados por dos puntos e indican ``<external>: <internal>`` respectivamente. 

| Parámetro | Función |
| ------ | ------ |
| ``--net=host`` | Habilitamos el uso de la red ``host`` en vez de una virtual para docker |


## Gestión Web

Accedemos con un navegador web a la ``ip_del_host:2112/status`` para usar la interfaz web

> ... la culminación de un fin es el comienzo de una realidad.
