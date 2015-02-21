
build: includes
	jekyll

includes:
	cd _includes && make

server: includes
	jekyll --server 8080

push:
	rsync -avzc _site/* brainattic.in:/var/www/brainattic.in/ 
