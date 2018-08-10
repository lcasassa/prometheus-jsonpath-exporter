FROM python:2.7.13-alpine

COPY app/requirements.txt /opt/prometheus-jsonpath-exporter/requirements.txt
RUN pip install -r /opt/prometheus-jsonpath-exporter/requirements.txt

COPY app /opt/prometheus-jsonpath-exporter

EXPOSE 9158

ENTRYPOINT ["python", "/opt/prometheus-jsonpath-exporter/exporter.py"]
