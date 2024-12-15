echo "Copiando archivos..."
cp ~/.vimrc ./
echo ".vimrc copiado"
cp ~/.zshrc ./
echo ".zshrc copiado"
cp -r ~/.config/nvim ./
echo "Directorio de nvim copiado"
echo "Archivos copiados con exito"

git add . && git commit -m "$1"
git push origin main

