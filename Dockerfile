FROM alpine

WORKDIR /frp

COPY ./* ./

CMD chmod +x install.sh && ./install.sh && [[ -n "${RUN_FRPS}" ]] && /frp/frp/frps -c "${FRP_CONFIG_FILE}" || /frp/frp/frpc -c "${FRP_CONFIG_FILE}"
