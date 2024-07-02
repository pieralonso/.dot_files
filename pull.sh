echo "Ejecutando script..."
echo "Obteniendo archivo de git "
cd ./.config_files
git pull origin main
echo "Copiando el archivo a la ruta principal " 
cp .vimrc ~/
echo "Archivo copiado con exito"
