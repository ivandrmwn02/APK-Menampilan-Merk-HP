.MODEL SMALL
.CODE

ORG 100h

JMP Mulai

;Variabel
nama    DB 0dh, 0ah, 0dh, 0ah, "Masukan Nama Anda : ", '$'
id      DB 0dh, 0ah, "Masukan id Anda : ", '$'
van1       DB "PROGRAM MENAMPILAN MERK HP", 0dh, 0ah, "----------------------------", '$' 
van2   DB 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Selamat Datang Di Pencarian Merk Hp ...", '$' 
van3   DB 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Merk Hp Yang tersedia saat ini : ", 0dh, 0ah 
        DB "=====================", 0dh, 0ah
        DB "=   1. Iphone      =", 0dh, 0ah
        DB "=   2. Samsung    =", 0dh, 0ah
        DB "=   3. Realme      =", 0dh, 0ah
        DB "=   4. Xiaomi  =", 0dh, 0ah 
        DB "=   5. Oppo  =", 0dh, 0ah  
        DB "=   6. Vivo  =", 0dh, 0ah   
        DB "=   7. Asus =", 0dh, 0ah 
        DB "=====================", 0dh, 0ah
        DB 0dh, 0ah, "Merk Hp yang anda cari ? ", '$'                                                                                                                                           

van4    DB 0dh, 0ah, "Pencarian Merk Hp Berhasil...", '$'
van5    DB 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "========================= PENCARIAN SELESAI =====================", 0dh, 0ah,
        DB "Silahkan keluar dari pencarian", '$'
        

van6    DB 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Ingin Melihat Merk Hp lain ? (Y, N)", '$'
van7    DB 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Terimakasih Telah Mencari Merk Hp disini..", '$'
error   DB 0dh, 0ah, "Masukan Kode Dengan Benar", '$'
mii1    DB 0dh, 0ah, 0dh, 0ah, "====== Iphone ======", 0dh, 0ah, "Iphone XR", 0dh, 0ah, "Iphone 11", 0dh, 0ah, "Iphone SE", 0dh, 0ah, "Iphone 12", 0dh, 0ah, "Iphone 12 mini", 0dh, 0ah, "Iphone 13", 0dh, 0ah, "Iphone 13 Mini", 0dh, 0ah, "Iphone 13 Pro", 0dh, 0ah, "Iphone 13 ", 0dh, 0ah, '$' 
mii2    DB 0dh, 0ah, 0dh, 0ah, "====== Samsung ======", 0dh, 0ah, "Samsung Galaxy Z Flip", 0dh, 0ah, "Samsung Galaxy Fold", 0dh, 0ah, "Samsung Galaxy Note 20 ", 0dh, 0ah, "Samsung Galaxy S20 Ultra", 0dh, 0ah, "Samsung Galaxy S20 Plus", 0dh, 0ah, "Samsung Galaxy S21 FE", 0dh, 0ah, "Samsung Galaxy S22", 0dh, 0ah, '$'
mii3    DB 0dh, 0ah, 0dh, 0ah, "====== Realme ======", 0dh, 0ah, "Realme Narzo 50A", 0dh, 0ah, "Realme C11", 0dh, 0ah, "Realme 8i ", 0dh, 0ah, "Realme 8", 0dh, 0ah, "Realme 9 Pro", 0dh, 0ah, "Realme 9 Pro +", 0dh, 0ah, "Realme X5- Pro", 0dh, 0ah, '$' 
mii4    DB 0dh, 0ah, 0dh, 0ah, "====== Xiaomi ======", 0dh, 0ah, "Xiaomi Poco C40", 0dh, 0ah, "Xiaomi Poco F4", 0dh, 0ah, "Xiaomi 11T", 0dh, 0ah, "Xiaomi 11TPro", 0dh, 0ah, "Xiaomi Redmi Note 11", 0dh, 0ah, "Xiaomi Redmi Note 11 Pro", 0dh, 0ah, "Xiaomi 12", 0dh, 0ah, '$'
mii5    DB 0dh, 0ah, 0dh, 0ah, "====== Oppo ======", 0dh, 0ah, "Oppo Find X3", 0dh, 0ah, "Oppo Find X3 PRo", 0dh, 0ah, "Oppo Find X5 ", 0dh, 0ah, "Oppo Find X5 Pro", 0dh, 0ah, "Oppo Find N", 0dh, 0ah, "Oppo Reno 6", 0dh, 0ah, "Oppo Reno 6 Pro", 0dh, 0ah, '$'
mii6    DB 0dh, 0ah, 0dh, 0ah, "====== Vivo ======", 0dh, 0ah, "Vivo Y02", 0dh, 0ah, "Vivo V25e", 0dh, 0ah, "Vivo V25 Pro ", 0dh, 0ah, "Vivo Y16", 0dh, 0ah, "Vivo Y35", 0dh, 0ah, "Vivo Y22", 0dh, 0ah, "Vivo X80 Pro", 0dh, 0ah, '$'
mii7    DB 0dh, 0ah, 0dh, 0ah, "====== Asus ======", 0dh, 0ah, "Asus Zenfone 6", 0dh, 0ah, "Asus Zenfone 8", 0dh, 0ah, "Asus ROG Phone", 0dh, 0ah, "Asus ROG Phone 2", 0dh, 0ah, "Asus ROG Phone 5", 0dh, 0ah, "ROG Phone 3", 0dh, 0ah, "ROG Phone 5s Pro", 0dh, 0ah, '$'
mii8    DB 0dh, 0ah, 0dh, 0ah, "Ketik 'E' Untuk Mencetak Bukti dan Keluar dari program.... ", '$'

tampung_nama DB 30, ?, 30 dup(?)
tampung_id DB 30, ?, 30 dup(?)
        
        
Mulai:
    MOV ah, 09
    LEA dx, van1
    INT 21h
    
    MOV ah, 09
    LEA dx, nama
    INT 21h
    
    MOV ah, 0ah
    LEA dx, tampung_nama
    INT 21h
    PUSH dx
    
    MOV ah, 09
    LEA dx, id
    INT 21h
    
    MOV ah, 0ah
    LEA dx, tampung_id
    INT 21h
    PUSH dx
    
    MOV ah, 09
    LEA dx, van2
    INT 21h
    
Mulai2:
    MOV ah, 09
    LEA dx, van3
    INT 21h
    
Proses:
    MOV ah, 01
    INT 21h
    
    CMP al, '1'
    JE merk_1
    
    CMP al, '2'
    JE merk_2
    
    CMP al, '3'
    JE merk_3
    
    CMP al, '4'
    JE merk_4
    
    CMP al, '5'
    JE merk_5
    
    CMP al, '6'
    JE merk_6
    
    CMP al, '7'
    JE merk_7
    
    JNE psn_error
    
Proses2:
    MOV ah, 09
    LEA dx, van6
    INT 21h
    MOV ah, 01
    INT 21h
    
    CMP al, 'Y'
    JE cari_lagi
    
    CMP al, 'y'
    JE cari_lagi
    
    CMP al, 'N'
    JE cari_selesai
    
    CMP al, 'n'
    JE cari_selesai
    
    JNE psn_error2

merk_1:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii1
     INT 21h   
     
     JMP Proses2
     
merk_2:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii2
     INT 21h   
     
     JMP Proses2

merk_3:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii3
     INT 21h   
     
     JMP Proses2 
     
merk_4:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii4
     INT 21h   
     
     JMP Proses2    
     
merk_5:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii5
     INT 21h   
     
     JMP Proses2
                 
merk_6:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii6
     INT 21h   
     
     JMP Proses2 
     
merk_7:
     MOV ah, 09
     LEA dx, van4
     INT 21h
     
     MOV ah, 09
     LEA dx, mii7
     INT 21h   
     
     JMP Proses2
     
cari_lagi:
    JMP Mulai2

cari_selesai:
    MOV ah, 09
    LEA dx, van5
    INT 21h
    JMP Konfirmasi

psn_error:
    MOV ah, 09
    LEA dx, error
    INT 21h
    
    JMP Mulai2

psn_error2:
    MOV ah, 09
    LEA dx, error
    INT 21h
    
    JMP Proses2

Konfirmasi:
    MOV ah, 09
    LEA dx, mii8
    INT 21h
    MOV ah, 01
    INT 21h
    
    CMP al, 'E'
    JE Exit
    
    CMP al, 'e'
    JE Exit
    
    JNE psn_error
    
 

JMP Exit

Exit:
    MOV ah, 09
    LEA dx, van7
    INT 21h 
    
    INT 20h
     
RET