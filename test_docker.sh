docker build -t rogargon/rml-weights .
docker run \
-v "$(pwd)"/data/ddos/:/data/ddos/ \
-v "$(pwd)"/data/inputs/:/data/inputs/ \
-v "$(pwd)"/data/outputs/:/data/outputs/ \
-e DIDS='["8f67E08be5dD941a701c2491E814535522c33bC2"]' \
rogargon/rml-weights /map-inputs.sh
