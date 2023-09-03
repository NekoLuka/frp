if [[ -d fpr ]]; then
    echo frp is already downloaded
else
    wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz
    echo downloaded frp_${FRP_VERSION}_linux_amd64.tar.gz
    tar -xf /frp/frp_${FRP_VERSION}_linux_amd64.tar.gz
    echo extracted frp_${FRP_VERSION}_linux_amd64.tar.gz
    rm /frp/frp_${FRP_VERSION}_linux_amd64.tar.gz
    echo removed frp_${FRP_VERSION}_linux_amd64.tar.gz
fi