CONTAINER_NAME="tp4-app"
IMAGE_NAME="im-tp4"
NETWORK_NAME="net-tp4"
HOST_PORT=5000
CONTAINER_PORT=5000

if ! docker network ls | grep -q "$NETWORK_NAME"; then
    echo "Création du réseau Docker : $NETWORK_NAME"
    docker network create "$NETWORK_NAME"
fi

# Supprimer un conteneur existant avec le même nom, s'il existe
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "Suppression de l'ancien conteneur : $CONTAINER_NAME"
    docker rm -f "$CONTAINER_NAME"
fi

# Lancer le conteneur
echo "Lancement du conteneur $CONTAINER_NAME à partir de l'image $IMAGE_NAME"
docker run -d \
    --name "$CONTAINER_NAME" \
    --network "$NETWORK_NAME" \
    -p $HOST_PORT:$CONTAINER_PORT \
    "$IMAGE_NAME"
