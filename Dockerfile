FROM python:3.8 
#Python 3.8 temelli bir Docker imajını kullandım.

WORKDIR /app
#Docker imajının çalışma dizesini /app dizine ayarlar.

COPY requirements.txt ./
#requirements.txt dosyasını Docker imajına kopyalar.

RUN pip install -r requirements.txt
#requirements.txt dosyasında listelenen flask'ı yükler.

COPY app.py ./
#app.py dosyasını Docker imajına kopyalar.

EXPOSE 5000
#Docker imajının 5000 numaralı portu açar.

CMD ["python", "app.py"]
#Docker imajını başlattığında app.py dosyasını çalıştırır.