# Monad Node — `asplana92` (DevNet)

This repository documents the setup and launch of my Monad DevNet node `asplana92`, running on Apple Silicon (Mac M4, using amd64 Docker emulation).  
The goal is to actively participate in the Monad network, support DevNet/Testnet, and prepare for future validator and airdrop opportunities.

---

## 🛰️ Node Status

| Stage | Status |
|-------|--------|
| Dockerfile Ready | ✅ Completed |
| DevNet Role Request | ⏳ Pending (Form Submitted) |
| Binary (tar.gz) | ⏳ Waiting for official link |
| Node Init (`monad init`) | 🔜 Planned |
| Node Start (`monad start`) | 🔜 Pending binary URL |

---

## 🏗 How to Build (Binary Required)

```bash
docker build --build-arg MONAD_URL="<PUT_TAR_GZ_URL_HERE>" -t monad-node .
docker run -it --name monad-dev -v $HOME/monad-data:/home/monad/.monad monad-node init asplana92 --chain-id monad-devnet
docker run -it --name monad-dev -v $HOME/monad-data:/home/monad/.monad -p 26656:26656 -p 26657:26657 monad-node start

🧰 Technical Notes

Running on Mac M4 (ARM) → using --platform=linux/amd64 in Docker

Waiting for DevNet role to receive official peers and binary

Peers will be added to config.toml after init

🗂 Repository Files (Planned)
| File         | Purpose                                |
| ------------ | -------------------------------------- |
| `Dockerfile` | Build image with official Monad binary |
| `LOG.md`     | Timeline of node setup progress        |
| `TODO.md`    | Next steps (peers, testnet, validator) |
| `peers.txt`  | To be added after DevNet access        |

🎯 Roadmap

 Receive DevNet role on Discord

 Obtain official Monad binary (Linux tar.gz)

 Initialize node asplana92

 Add peers & enable syncing

 Transition from DevNet → Testnet (Validator Ready)

 🧭 About Me

I am exploring Monad as an early infrastructure participant, running nodes, testing new L1 architectures, and contributing feedback as part of my Web3 journey.
