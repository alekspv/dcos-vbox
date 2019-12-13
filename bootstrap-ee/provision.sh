#!/bin/sh

set -e

cd /vagrant

if [ -d genconf/serve ]; then
	rm -fr genconf/serve
fi

bash dcos_generate_config.ee.sh

bash dcos_generate_config_win.ee.sh

cp ip-detect.ps1 genconf/serve/windows/ip-detect.ps1
cp ip-detect-public.ps1 genconf/serve/windows/ip-detect-public.ps1

# Duplicate server at 2.1/genconf/serve
rm -fr genconf/serve/2.1
mkdir -p genconf/serve/2.1/genconf
cp -r genconf/serve servetmp
mv servetmp genconf/serve/2.1/genconf/serve

docker run -d -p 80:80 -v /vagrant/genconf/serve:/usr/share/nginx/html:ro nginx
