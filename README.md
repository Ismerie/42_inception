# 42_inception
42_inception est un projet l'école 42 dans lequel nous devons virtualiser plusieurs images Docker, en les créant dans une machine virtuelle personnelle.

## 📋 Règles
Le projet consiste a mettre en place une infrastructure composée de différents services. Chaque service s'exécute dans un conteneur dédié.  
Nous devons écrire nos propres **Dockerfiles**, un par service. Les **Dockerfiles** doivent petre appelés dans notre **docker-compose.yml** par notre **Makefile**.  
Nous devons contruire nous-mêmes les images Docker, interdiction d'utiliser des services tels que DockerHub.

Il faut mettre en place :
* Un conteneur Docker qui contient **NGINX** avec **TLSv1.2** ou **TLSv1.3** uniquement et utilisant le port 443. Il doit etre le seul point d'entrée dans notre infrastructure
* Un conteneur Docker contenant **Wordpress** et **php-fpm** uniquement en utilisant **le port 9000**
* Un conteneur Docker contenant uniquement **MariabDB** en utilisant **le port 3306**
* Un volume qui contient notre **base de données Wordpress**. Il doit y avoir 2 utilisateurs, l'un d'eux étant l'admin
* Un deuxième volume qui contient **les fichiers de notre site Wordpress**
* Un **réseau docker** qui établit la connexion entre nos conteneurs

Notre volume sera disponible dans le dossier ```/home/login/data``` de la machine hôte.  
Le nom de domaine pointe vers notre adresse IP locale, il doit etre ```login.42.fr```.   
Les variables sont stockées dans un fichier de variables d'environnement comme **.env**.

## 🛠️ Usage
Pour créer les images et déployer l'infrastructure :  
```
make
```  
Pour arrêter les conteneurs :  
```
make stop
```  
Pour supprimer des conteneurs, des images, des volumes et un réseau :  
```
make clean
```  
