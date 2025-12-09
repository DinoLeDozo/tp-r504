compte1 = 0
compte2 = 0
for ((i=0; i<500; i++)); do
	resultat=$(curl http://localhost:83)

	if [ "$resultat" = "<h1>Hello 1</h1>" ]; then
		((compte1++))
	elif [ "$resultat" = "<h2>Hello 2</h2>" ]; then
		((compte2++))
	fi
done

echo "Serveur 1 : $compte1"
echo "Serveur 2 : $compte2"
