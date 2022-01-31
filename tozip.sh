for dir in ./*/ ; do
    # Entra na pasta da matéria
    cd "$dir"

    # Apaga enventuais zips aqui
    rm ./*.zip

    # Comprime para a pasta raiz o conteúdo da pasta atual.
    # Precisamos cortar os dois primeiros e o último caracter:
    # "./uma-pasta/"
    #    \      /
    #  "uma-pasta"
    zip -r "../${dir:2:-1}.zip" ./

    # Volta para a pasta raiz
    cd ..
done
