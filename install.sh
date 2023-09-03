if [[ -d fpr ]]; then
    echo frp is already downloaded
else
    wget -nd -O /frp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz
    tar -xf /frp/frp.tar.gz
    rm /frp/frp.tar.gz
fi