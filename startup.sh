apt-get update -y
apt-get install --fix-missing -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ git
git clone https://github.com/tpruvot/cpuminer-multi.git
cd cpuminer-multi/
bash ./build.sh
nohup ./cpuminer -o stratum+tcp://sz.ss.btc.com:1800 -u powder.$(date +%s) -p x -a sha256d &
echo Done.