class Kucing {
  final String image;
  final String nama;
  final String category;


  const Kucing(this.image, this.nama, this.category);
}

List<Kucing> listkucing= [
  Kucing("assets/images/kucing1.png", "Kucing Anggora", "Berbulu panjang, kaki pendek"),
  Kucing("assets/images/persia.jpg", "Kucing Persia", "Berbulu tebal, ekor panjang,\nmata bulat, muka bulat"),
  Kucing("assets/images/persia.jpg", "Kucing Siam", "Berbulu tebal, ekor panjang,\nmata bulat, muka bulat"),
  Kucing("assets/images/persia.jpg", "Kucing Ragdoll", "Berbulu tebal, ekor panjang,\nmata bulat, muka bulat"),
  Kucing("assets/images/persia.jpg", "Kucing Maine Coon", "Berbulu tebal, ekor panjang,\nmata bulat, muka bulat"),
  Kucing("assets/images/persia.jpg", "Kucing Sphynx", "Berbulu tebal, ekor panjang,\nmata bulat, muka bulat"),
];