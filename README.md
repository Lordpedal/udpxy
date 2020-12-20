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

| Parámetro | Función |
| ------ | ------ |
| ``--net=host`` | Habilitamos el uso de la red ``host`` en vez de una virtual para docker |

## Gestión Web

Accedemos con un navegador web a la ``ip_del_host:2112/status`` para usar la interfaz web

**NOTA**: Recuerda que el puerto `Unicast` es: **2112**

## Ejemplo

**Enlace tipo Multicast**: rtp://@239.0.5.185:8208 

**Enlace tipo Unicast**: http://192.168.1.90:2112/rtp/239.0.5.185:8208

> ... la culminación de un fin es el comienzo de una realidad.
