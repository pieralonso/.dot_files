echo "Ejecutando script..."
echo "Obteniendo archivo de git "
git pull origin main
echo "Copiando el archivo a la ruta principal " 
cp .vimrc ~/
cp .zshrc ~/
echo "Archivo copiado con exito"
