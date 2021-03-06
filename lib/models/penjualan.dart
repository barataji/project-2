class Penjualan {
  //deklarasi variabel untuk menangkap inputan
  //tidak sama dengan field pada tabel
  int _id;
  String _name;
  String _keterangan;
  String _jumlah;
  String _tanggal;
  //deklarasi parameter untuk menerima inputan pada class
  //Buat constructor. Dengan parameter untuk menyimpan hasil inputnya divariabel yang dibuat tadi
  Penjualan(this._name, this._keterangan, this._jumlah, this._tanggal);
  //memasukkan atribut pada map yang nantinya akan ditampilkan
  //buat constructor lagi, Tapi dengan memberikan nama tambahan
  //agar constructor pertama tidak menerima error
  //Jika constructor ini dipanggil, akan mengambil data dari sql
  //(Data dari sql yang tersimpan akan berbentuk Map)
  //setelah itu, akan disimpan kembali ke dalam variabel
  Penjualan.formMap(Map<String, dynamic> map) {
    this._id = map['id'];
    //terdapat toString(), jika terdapat nilai angka tetap ditampilkan sebagai string
    this._name = map['name'].toString();
    this._keterangan = map['keterangan'].toString();
    this._jumlah = map['jumlah'].toString();
    this._tanggal = map['tanggal'].toString();
  }
  //membuat getter dan setter
  //getter akan mengambil nilai yang nanti dimasukkan ke constructor
  //variabel yang digunakan diluar class ini
  //sebaiknya disesuaikan dengan field pada tabel
  //inisialisasi variabel
  int get id => _id;
  String get name => _name;
  String get keterangan => _keterangan;
  String get jumlah => _jumlah;
  String get tanggal => _tanggal;

  //setter ini akan dipakai untuk mengembalikan nilai yang dimasukkan dari constructor
  //per variable saja
  //fungsi ini akan dipanggil pada proses pengisian data untuk form input
  //dan yang menggunakan class penjualan
  //sebaiknya disamakan nama fungsinya dengan variabel diatas
  set name(String value) {
    //sebaiknya disamakan dengan variabel lokal diatas yaitu:_name
    //jika berbeda dapat terjadi masalah pada proses update
    _name = value;
  }

  set keterangan(String value) {
    _keterangan = value;
  }

  set jumlah(String value) {
    _jumlah = value;
  }

  set tanggal(String value) {
    _tanggal = value;
  }

  //Terakhir, membuat method untuk memasukkan getter & setter tadi kedalam map
  //return map digunakan pada database, nama variabel disamakan dengan field
  //method map ini untuk membuat method update dan insert nanti
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this.id;
    map['name'] = name;
    map['keterangan'] = keterangan;
    map['jumlah'] = jumlah;
    map['tanggal'] = tanggal;
    return map;
  }
}
