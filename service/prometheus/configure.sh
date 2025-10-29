set -euo pipefail;

if [ ! -e ./.env ]; then
    echo ".env file doesn't exists; copying existing .env.template";
    cp ./.env.template ./.env;
    echo "considering modify .env file to make alertmanager work";
fi

set -a;
source .env;
set +a;

envsubst < alertmanager.yml.template > alertmanager.yml;
echo "OK: allertmanager.yml generated"

