FROM node:20-alpine			# 1️⃣ Imagen base

WORKDIR /app							# 2️⃣ Directorio de trabajo

COPY package.json package-lock.json* ./		# 3️⃣ instalar dependencias de package.json
RUN npm install

COPY . .				# 4️⃣ Copiar el resto del código

EXPOSE 3000								# 5️⃣ Exponer puerto

CMD ["npm", "start"]						# 6️⃣ Comando por defecto (desarrollo)