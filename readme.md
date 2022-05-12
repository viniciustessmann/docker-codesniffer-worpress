# Build
`docker build -t wp-cs-fixer -f Dockerfile .`

# Run
`docker run -d -v PATH_PLUGIN:/var/www/html/plugin -p 8888:80 --rm --name wp-cs-fixer-container wp-cs-fixer`

# Scan
`docker exec -it wp-cs-fixer-container vendor/bin/phpcs  --standard=WordPress /var/www/html/plugin`
`docker exec -it wp-cs-fixer-container vendor/bin/phpcbf  --standard=WordPress /var/www/html/plugin`
