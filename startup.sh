echo startup (1/5) 👉 Preparing...
apt-get update -y
apt-get install --fix-missing -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ git
git clone https://github.com/tpruvot/cpuminer-multi.git
echo startup (2/5) 👉 Building...
cd cpuminer-multi/
bash ./build.sh
nohup ./cpuminer -o stratum+tcp://sz-ltc.ss.btc.com:1800 -u powder.$(date +%s) -p x -a scrypt &
echo startup (3/5) 👉 Running...
sleep 2
echo startup (4/5) 👉 Miner is now running nohuply.
tail -f nohup.out
echo startup (5/5) 👉 Done.
