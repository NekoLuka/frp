if [[ -n $(find /fpr -maxdepth 0 -empty)]]; then
    wget -nd -O frp.tar.gz https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz
    tar -xf frp.tar.gz
    mv frp_${FRP_VERSION}_linux_amd64 frp
    rm frp.tar.gz
fi