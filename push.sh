echo "Copiando el archivo .vimrc a la carpeta de git"
cp .vimrc ./.config_files
echo "Moviendose dentro de la carpeta repositorio"
cd ./.config_files
echo "Empujando los archivos al repositorio"
git add --all
git commit -m "$1"
git push origin main
echo "Script ejecutado con exito"
