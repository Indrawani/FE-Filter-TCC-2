# Menggunakan node:18-alpine sebagai base image untuk aplikasi kita
FROM node:16-alpine

# Set working directory
# Menentukan direktori kerja yang akan digunakan dalam container
WORKDIR /user/src/app

# Copy application files
# Menyalin seluruh file aplikasi ke dalam direktori kerja di dalam container
COPY . .
# Install dependencies
# Melakukan instalasi dependency menggunakan npm, dengan opsi legacy-peer-deps
RUN npm install --legacy-peer-deps 

RUN npm install -g serve

# Build the application
# Melakukan build aplikasi menggunakan npm
RUN npm run build
# Start the application
# Menjalankan aplikasi menggunakan perintah "npm run start"
# serve -s build
CMD npx serve -s build