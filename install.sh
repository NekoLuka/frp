if [[ -d fpr ]]; then
    echo frp is already downloaded
else
    wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz 2>/dev/null
    echo downloaded frp_${FRP_VERSION}_linux_amd64.tar.gz
    tar -xf /frp/frp_${FRP_VERSION}_linux_amd64.tar.gz
    echo extracted frp_${FRP_VERSION}_linux_amd64.tar.gz
    cp /frp/frp_${FRP_VERSION}_linux_amd64/frps /frp/frps
    cp /frp/frp_${FRP_VERSION}_linux_amd64/frpc /frp/frpc
    echo copied over executables
    rm /frp/frp_${FRP_VERSION}_linux_amd64.tar.gz
    echo removed frp_${FRP_VERSION}_linux_amd64.tar.gz
fi