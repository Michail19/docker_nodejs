# Используем официальный образ Node.js
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем файлы приложения
COPY . .

# Открываем порт для контейнера
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "start"]
