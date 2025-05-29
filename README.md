# hadoop-hive
Grupo 02 - Taller de Aplicaciones Sociales

## Descripción

Este proyecto levanta un entorno Big Data local con Hadoop, Hive, Hue y PostgreSQL usando Docker Compose. Permite experimentar con procesamiento de datos, consultas SQL y visualización a través de la interfaz web de Hue.

## Servicios principales

- **Hadoop NameNode y DataNode**: Sistema de archivos distribuido HDFS.
- **YARN ResourceManager**: Gestión de recursos y ejecución de trabajos.
- **Hive Metastore y HiveServer2**: Almacenamiento de metadatos y motor SQL sobre Hadoop.
- **PostgreSQL**: Base de datos para Hive Metastore y Hue.
- **Hue**: Interfaz web para consultas y administración.

## Requisitos previos

- Docker
- Docker Compose

## Levantar el entorno

```sh
# Desde la raíz del proyecto
# (en PowerShell o terminal compatible)
docker-compose up -d
```

Esto descargará las imágenes necesarias y levantará todos los servicios en segundo plano.

## Acceso a los servicios

- **Hue Web UI**: [http://localhost:8888](http://localhost:8888)
- **Hadoop NameNode UI**: [http://localhost:50070](http://localhost:50070)
- **HiveServer2**: puerto 10000 (usado internamente)

## Probar la comunicación entre servicios

### 1. Conectarse al contenedor de HiveServer2

Ejecuta el siguiente comando en tu terminal para acceder al contenedor de HiveServer2:

```sh
docker exec -it hadoop-hive-bigdata-hive-server-1 bash
```

### 2. Probar conexión con Beeline

Dentro del contenedor, ejecuta:

```sh
beeline -u jdbc:hive2://localhost:10000
```



## Variables de entorno y configuración

- Configuración de servicios y credenciales en `hadoop-hive.env`.
- Configuración personalizada de Hue en `hue-overrides.ini`.

## Apagar el entorno

```sh
docker-compose down
```



