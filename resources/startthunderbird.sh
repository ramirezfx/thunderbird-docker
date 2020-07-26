HOME="$(echo ~)"
mkdir -p ${HOME}/docker/thunderbird-home
xhost +

docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/docker/thunderbird-home:/home/thunderbird \
    --workdir ${HOME} \
    -e DISPLAY=$DISPLAY \
    -e HOME=${HOME} \
    -e USER=${USER} \
    -e USERID=${UID} \
    ramirezfx/thunderbird:latest
