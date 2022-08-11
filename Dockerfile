FROM grafana/grafana-oss:9.0.7
ENV TZ=Asia/Tokyo

# Grafana config
ENV GF_LOG_MODE=console

RUN wget -O /tmp/BaltimoreCyberTrustRoot.crt.pem https://www.digicert.com/CACerts/BaltimoreCyberTrustRoot.crt.pem

EXPOSE 3000
