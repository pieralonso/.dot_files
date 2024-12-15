echo "Copiando el archivo .vimrc a la carpeta de git"
cp ~/.vimrc ./
cp ~/.zshrc ./
cp -r ~/.config/nvim ./
git add --all
git commit -m "$1"
git push origin main
echo "Script ejecutado con exito"
