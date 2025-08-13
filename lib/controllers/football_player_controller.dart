import 'package:get/get.dart';
import 'package:latihan1_11pplg2/models/football_player_model.dart';
// Impor barrel file kita
import 'package:latihan1_11pplg2/constants/app_images.dart'; 

class FootballPlayerController extends GetxController {
  var players = <FootballPlayer>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Mengisi data awal saat controller pertama kali dibuat
    players.addAll([
      FootballPlayer(
        name: "Mbappe",
        position: "Forward",
        number: 7,
        image: AppImages.mbappe
      ),
      FootballPlayer(
        name: "Vinicius",
        position: "Winger",
        number: 11,
        image: AppImages.vinicius
      ),
      FootballPlayer(
        name: "Bellingham",
        position: "Midfielder",
        number: 5,
        image: AppImages.bellingham
      ),
      FootballPlayer(
        name: "Rodrygo",
        position: "Winger",
        number: 14,
        image: AppImages.rodrygo
      ),
      FootballPlayer(
        name: "Rudiger",
        position: "Defender",
        number: 22,
        image: AppImages.rudiger
      ),
    ]);
  }

  // --- FUNGSI UNTUK MENGELOLA DATA ---

  /// Mengupdate data pemain yang sudah ada berdasarkan index
  void updatePlayer(int index, FootballPlayer updatedPlayer) {
    // Memastikan index valid sebelum melakukan update
    if (index >= 0 && index < players.length) {
      players[index] = updatedPlayer;
    }
  }

  /// Menambah pemain baru ke akhir daftar
  void addPlayer(FootballPlayer newPlayer) {
    players.add(newPlayer);
  }

  /// Menghapus pemain dari daftar berdasarkan index
  void removePlayer(int index) {
    // Memastikan index valid sebelum menghapus
    if (index >= 0 && index < players.length) {
      players.removeAt(index);
    }
  }
}