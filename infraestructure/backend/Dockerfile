FROM python:3.11-slim			# 1️⃣ Imagen base

ENV PYTHONUNBUFFERED=1				# 2️⃣ Variables de entorno

WORKDIR /app							# 3️⃣ Directorio de trabajo

RUN apt-get update && apt-get install -y \		# 4️⃣ dependencias (PostgreSQL, OpenLDAP)
    postgresql-client \
    ldap-utils \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .						# 5️⃣ Copiar requerimientos y código
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080				# 6️⃣ Exponer puerto si tu backend tiene API

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]   # FastApi