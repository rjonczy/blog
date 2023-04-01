# all: deploy

page:
	hugo new posts/$1

server:
	hugo server -ws .

site:
	hugo --minify
	minify -r -o public/ -a public/
	find public -type d -print0 | xargs -0 chmod 755
	find public -type f -print0 | xargs -0 chmod 644

clean:
	rm -rf public/

.FORCE:
