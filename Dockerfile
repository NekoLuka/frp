FROM alpine

WORKDIR /frp

COPY ./* ./

CMD chmod +x install.sh && ./install.sh && ls && \
    [[ -n "${RUN_FRPS}" ]] && /frp/frp_${FRP_VERSION}_linux_amd64/frps -c "${FRP_CONFIG_FILE}" || /frp/frp_${FRP_VERSION}_linux_amd64/frpc -c "${FRP_CONFIG_FILE}"
