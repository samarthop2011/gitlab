FROM ubuntu:22.04

RUN apt update && apt install -y qemu-system-x86 wget

WORKDIR /vm

# Download Ubuntu ISO
RUN wget https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso -O ubuntu.iso

CMD qemu-system-x86_64 \
    -m 24576 \
    -smp 8 \
    -cdrom ubuntu.iso \
    -boot d \
    -nographic
