echo "install dot files...."
echo "Your dot files will be covered,  yes or no?(Y/n)"
read answer
case "$answer" in
  yes | Y | y | Yes | YES ) 
	cp -rf .vim	.vimrc .viminfo .emacs .fonts ~/
	echo "Done! Have fun!!"
	;;
  *)
	echo "Ok... dot files have not be covered."
	;;
esac

exit 0
