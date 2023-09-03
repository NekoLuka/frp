FROM alpine

WORKDIR /frp

COPY ./* ./

CMD chmod +x install.sh && ./install.sh && \
    [[ -n "${RUN_FRPS}" ]] && ./frps -c "${FRP_CONFIG_FILE}" || ./frpc -c "${FRP_CONFIG_FILE}"
