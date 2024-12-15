echo "Ejecutando script..."
echo "Obteniendo archivos de git"
git pull origin main
echo "Copiando el archivo a la ruta principal " 
cp .vimrc ~/
cp .zshrc ~/
cp -r nvim ~/.config
echo "Archivos copiado con exito"
