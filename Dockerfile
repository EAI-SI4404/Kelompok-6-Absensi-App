# Menggunakan base image python versi terbaru
FROM python:latest

# Mengatur direktori kerja
WORKDIR /app

# Menyalin file requirements.txt ke dalam kontainer
COPY requirements.txt .

# Menginstal dependensi dari requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin seluruh konten proyek ke dalam kontainer
COPY . .

# Menjalankan perintah untuk menjalankan aplikasi Flask
CMD ["python", "app.py"]
