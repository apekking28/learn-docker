FROM alpine:3

# buat folder hello
RUN mkdir hello
# memasukan semua isi dari folder text ke dalam folder container yang bernama hello
COPY /text/*.txt hello 

# membaca file world.txt di folder hello di dalam container
CMD cat "/hello/king.txt"