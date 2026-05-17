#include <iostream>
#include <vector>
#include <fstream>
#include "json.hpp"
using json = nlohmann::json;
//kodingan logika playlist (belum final)
/*yang harus diperbaiki dan ditambah:
-url,genre,dll kalo bisa masukin ke bank lagu
-buat json satu lagi untuk nyimpan vector playlist jadi ga ilang pas keluar
-fungsi untuk hapus lagu dari playlist
-fungsi untuk nambah objek baru dari class Playlist untuk buat playlist baru
-jangan lupa buat linked list untuk play otomatis musik di playlist*/

struct lagu_plylst{
    std::string judul;
    std::string artist;
};

class Playlist{
    private:
    std::vector<lagu_plylst>lagu; 
    json bank;
    
    public:
    void tampilkan(){
        for(const auto& musik:lagu){
            if(lagu.empty()){
                std:: cout << "Masukkan Lagu" << std::endl;
            }
            std::cout << musik.judul << " - " << musik.artist << std::endl;
        }
    }

    Playlist(){
        tampilkan();
        std::ifstream file("bank_lagu.json");
        if(!file.is_open()){
            std::cout<< "File Tidak Ditemukan" << std::endl;
            return;
        }
        file >> bank;
        file.close();
    }

    void tambah_lagu(const std::string& kode){
        lagu_plylst musik;

        if(bank["Bank"].contains(kode)){
            musik.judul= bank["Bank"][kode]["judul"];
            musik.artist= bank["Bank"][kode]["artist"];
            lagu.push_back(musik);
        }

    }
};

int main(){
    Playlist daftar1;
    daftar1.tambah_lagu("tes003");
    daftar1.tampilkan();
    return 0;
}