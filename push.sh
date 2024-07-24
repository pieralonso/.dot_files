echo "Copiando el archivo .vimrc a la carpeta de git"
cp ~/.vimrc ./
git add --all
git commit -m "$1"
git push origin main
echo "Script ejecutado con exito"
