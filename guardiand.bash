#!/usr/bin/env bash
# Run Guardiand

set -euo pipefail

# main for now (until we make a release)
DOCKER_IMAGE="ghcr.io/wormhole-foundation/guardiand:latest"

DOCKER_FLAGS="-p 7070:7070 -p 7071:7071 -p 6060:6060 -p 8999:8999/udp --add-host=host.docker.internal:host-gateway --platform linux/amd64"

HOST="host.docker.internal"

TERRAD_HOST="host.docker.internal"


docker run --rm --name guardiand $DOCKER_FLAGS --hostname guardian-0 --cap-add=IPC_LOCK "$DOCKER_IMAGE" node \
    --unsafeDevMode --guardianKey /bridge.key --publicRPC "[::]:7070" --publicWeb "[::]:7071" --publicGRPCSocket /publicGRPC.sock --adminSocket /admin.sock --dataDir /data \
    --ethRPC ws://$HOST:8545 \
    --bscRPC ws://$HOST:8546 \
    --solanaRPC http://$HOST:8899 \
    --polygonRPC    "none" \
    --avalancheRPC  "none" \
    --arbitrumRPC   "none" \
    --optimismRPC   "none" \
    --auroraRPC     "none" \
    --fantomRPC     "none" \
    --oasisRPC      "none" \
    --karuraRPC     "none" \
    --acalaRPC      "none" \
    --klaytnRPC     "none" \
    --celoRPC       "none" \
    --moonbeamRPC   "none" \
    --neonRPC       "none" \
    --terraWS       "none" \
    --terra2WS      "none" \
    --terraLCD      "none" \
    --terra2LCD     "none" \
    --aptosRPC      "none" \

    --algorandAlgodRPC "none" \
    --algorandIndexerRPC "none" \
    --algorandIndexerToken "" \
    --algorandAlgodToken "" \

    --bscContract   "0xC89Ce4735882C9F0f0FE26686c53074E09B0D550" \
    --ethContract   "0xC89Ce4735882C9F0f0FE26686c53074E09B0D550" \
    --solanaContract Bridge1p5gheXUvJ6jGWGeCsgPKgnE3YgdGKRVCMY9o \
    --pythnetContract Bridge1p5gheXUvJ6jGWGeCsgPKgnE3YgdGKRVCMY9o \
    --terraContract terra18vd8fpwxzck93qlwghaj6arh4p7c5n896xzem5 \
    --terra2Contract terra18vd8fpwxzck93qlwghaj6arh4p7c5n896xzem5 \
    --algorandAppID "4" \
    --aptosAccount  "de0036a9600559e295d5f6802ef6f3f802f510366e0c23912b0655d972166017" \
    --aptosHandle   "0xde0036a9600559e295d5f6802ef6f3f802f510366e0c23912b0655d972166017::state::WormholeMessageHandle" \
    --optimismContract "" \
