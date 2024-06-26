# Use a imagem oficial do Grafana como base
FROM grafana/grafana:latest

# Opcional: copie arquivos de configuração personalizados, se houver
# COPY grafana.ini /etc/grafana/grafana.ini
# COPY provisioning /etc/grafana/provisioning

# Exponha a porta em que o Grafana será executado
EXPOSE 3000

# Defina o comando padrão para iniciar o Grafana
CMD ["grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini"]
