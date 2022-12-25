.model small
.code
org 100h
start:
    jmp mulai
nama      db 13,10, 'Nama Peminjam: $'
alamat    db 13,10, 'Alamat: $'
ttl      db 13,10, 'Tanggal Lahir: $'

tampung_nama db 30,?,30 dup(?)
tampung_alamat db 30,?,30 dup(?)
tampung_ttl  db 13,?,13 dup(?)

a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
g db 07
h db 08
i db 09
j dw 15



daftar  db 13,10,'<------------------------------------------>'
        db 13,10,'|        Opsi Pinjaman                    |'
        db 13,10,'+-----------------------------------------+'
        db 13,10,'|No| Jumlah Nominal | Jangka Pengembalian |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|01| 500.000        | 6 Bulan             |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|02| 1.000.000      | 12 Bulan            |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|03| 1.500.000      : 6 Bulan              |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|04| 2.000.000      : 12 Bulan             |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|05| 2.500.000      : 6 Bulan              |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|06| 3.000.000      : 12 Bulan             |'    
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|07| 3.500.000      : 6 Bulan              |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|08| 4.000.000      : 12 Bulan             |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|09| 4.500.000      : 6 Bulan              |'
        db 13,10,'|-----------------------------------------|'
        db 13,10,'|10| 5.000.000      : 12 Bulan             |'
        db 13,10,'|-----------------------------------------+','$'    
        


pilih_ntr   db 13,10,'Masukkan Opsi yang Anda Inginkan: $'  
succes      db 13,10,'Succes $'

    mulai:
    mov ah,09h
    lea dx,nama
    int 21h
    mov ah,0ah
    lea dx,tampung_nama
    int 21h
    push dx
    
    mov ah,09h
    lea dx,alamat
    int 21h
    mov ah,0ah
    lea dx,tampung_alamat
    int 21h
    push dx   
    
    mov ah,09h
    lea dx,ttl
    int 21h
    mov ah,0ah
    lea dx,tampung_ttl
    int 21h
    push dx  
    
    mov ah,09h
    mov dx,offset daftar
    int 21h
    
        
proses:  
        mov ah,09h 
        mov dx,offset pilih_ntr
        int 21h
               
        
        mov ah,1
        int 21h
        mov bh,al
        mov ah,1
        int 21h
        mov bl,al
        cmp bh,'0'
        cmp bl,'1'
        je hasil1
        
        cmp bh,'0'
        cmp bl,'2'
        je hasil2 
        
        cmp bh,'0'
        cmp bl,'3'
        je hasil3
        
        cmp bh,'0'
        cmp bl,'4'
        je hasil4
        
        cmp bh,'0'
        cmp bl,'5'
        je hasil5
        
        cmp bh,'0'
        cmp bl,'6'
        je hasil6
        
        cmp bh,'0'
        cmp bl,'7'
        je hasil7
        
        cmp bh,'0'
        cmp bl,'8'
        je hasil8
        
        cmp bh,'0'
        cmp bl,'9'
        je hasil9
        
        cmp bh,'1'
        cmp bl,'0'
        je hasil10
        
        
;----------------------------'

hasil1:
        mov ah,09h
        lea dx,teks1
        int 21h
        int 20h    
hasil2:
        mov ah,09h
        lea dx,teks2
        int 21h
        int 20h
hasil3:
        mov ah,09h
        lea dx,teks3
        int 21h
        int 20h
hasil4:
        mov ah,09h
        lea dx,teks4
        int 21h
        int 20h
hasil5:
        mov ah,09h
        lea dx,teks5
        int 21h
        int 20h 
hasil6:
        mov ah,09h
        lea dx,teks6
        int 21h
        int 20h
hasil7:
        mov ah,09h
        lea dx,teks7
        int 21h
        int 20h  
hasil8:
        mov ah,09h
        lea dx,teks8
        int 21h
        int 20h  
hasil9:
        mov ah,09h
        lea dx,teks9
        int 21h
        int 20h  
hasil10:
        mov ah,09h
        lea dx,teks10
        int 21h
        int 20h  

       

;------------------------------

teks1   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 500.000 dengan jangka pembayaran 6 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
  
  
teks2   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 1.000.000 dengan jangka pembayaran 12 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
        
teks3   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 1.500.000 dengan jangka pembayaran 6 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
        
teks4   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 2.000.000 dengan jangka pembayaran 12 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
        
teks5   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 2.500.000 dengan jangka pembayaran 6 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $' 
        
teks6   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 3.000.000 dengan jangka pembayaran 12 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
        
teks7   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 3.500.000 dengan jangka pembayaran 6 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $' 
        
teks8   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 4.000.000 dengan jangka pembayaran 12 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
 
teks9   db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 4.500.000 dengan jangka pembayaran 6 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
        
teks10  db 13,10,'        '
        db 13,10,'Anda memilih opsi dengan pinjaman 5.000.000 dengan jangka pembayaran 12 bulan '
        db 13,10,'Terima kasih telah menggunakan layanan kami, jangan lupa bayar hutangnya!! $'
   
      
      
end start