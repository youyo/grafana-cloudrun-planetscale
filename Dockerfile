FROM grafana/grafana-oss:9.0.7
ENV TZ=Asia/Tokyo

# Grafana config
ENV GF_LOG_MODE=console
ENV GF_DATABASE_TYPE=mysql
ENV GF_DATABASE_NAME=grafana_cloudrun_planetscale
ENV GF_DATABASE_SSL_MODE=skip-verify
ENV GF_DATABASE_CA_CERT_PATH=/tmp/BaltimoreCyberTrustRoot.crt.pem
ENV GF_DATABASE_HOST=wpaazg9z5ov8.ap-northeast-2.psdb.cloud
ENV GF_LIVE_MAX_CONNECTIONS=0
ENV GF_INSTALL_PLUGINS=grafana-timestream-datasource
#ENV GF_DATABASE_USER
#ENV GF_DATABASE_PASSWORD
ENV GF_REMOTE_CACHE_TYPE=redis
#ENV GF_REMOTE_CACHE_CONNSTR

RUN wget -O /tmp/BaltimoreCyberTrustRoot.crt.pem https://www.digicert.com/CACerts/BaltimoreCyberTrustRoot.crt.pem

EXPOSE 3000
