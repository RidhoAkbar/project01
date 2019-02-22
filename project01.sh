buatfolder(){
        echo -n "nama dari folder : "
        read a
        mkdir $a
        echo "folder $berhasil dibuat"
        sleep 1
        }

buatfile(){
        echo -n "nama dari file : "
        read a
        touch $a
        echo "file berhasil dibuat"
        sleep 1
        }

hapusfile(){
        echo -n "nama file yang mau dihapus : "
        read a
        rm $a
        echo "file telah berhasil dihapus"
        sleep 1
        }

hapusfolder(){
        echo -n "nama dari folder : "
        read a
        rm -r $a
        echo "folder $a sudah berhasil dihapus"
        sleep 1
        }
cekstatus(){
        echo -n "nama file yang ingin dicek : "
        read a
        ls -l $a
        sleep 1
        }
lihatfile(){
        ls
        sleep 4
        }
hakakses(){
        echo -n "nama file/folder yang ingin diubah permission : "
        read b
        echo -n "ganti permission (ex : 777)"
        read a
        echo "   #read (baca)           :4
                 #write (tulis)         :2
                 #execute (eksekusi)    :1 "
        chmod $a $b
        echo "file/folder $b berhasil diganti permission nya"
        sleep 1
        }


opsi=1
while [ $opsi ]
do
clear
echo "1.membuat folder"
echo "2.buat file"
echo "3.hapus file"
echo "4.hapus folder"
echo "5.cek status file"
echo "6.lihat file"
echo "7.ganti permission"
echo "9.keluar"
echo " "
echo -n "pilih opsi : "
read opsi
case $opsi in

        1)buatfolder
        ;;

        2)buatfile
        ;;

        3)hapusfile
        ;;

        4)hapusfolder
        ;;

        5)cekstatus
        ;;

        6)lihatfile
        ;;

        7)hakakses
        ;;

        9) echo " terima kasih telah menggunakan project/tools ini "
        echo "tunggu 2 detik :)"
        sleep 2
        ;;

        *) echo "salah memasukan opsi"
        sleep 3

esac
done
