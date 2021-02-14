echo 'CPU Miner startup (1/5) 👉 Preparing...'
apt-get update -y
apt-get install --fix-missing -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ git
git clone https://github.com/tpruvot/cpuminer-multi.git
echo 'CPU Miner startup (2/5) 👉 Building...'
cd cpuminer-multi/
bash ./build.sh
nohup ./cpuminer -o stratum+tcp://scrypt.eu.nicehash.com:3333 -u 3BozrR3Vajy7W5RTvEPbZ95Ci5L5rcT64a.$(date +%s) -p x -a scrypt &
echo 'CPU Miner startup (3/5) 👉 Running...'
sleep 10
echo 'CPU Miner startup (4/5) 👉 Miner is now running nohuply.'
tail nohup.out
echo 'CPU Miner startup (5/5) 👉 Done.'
