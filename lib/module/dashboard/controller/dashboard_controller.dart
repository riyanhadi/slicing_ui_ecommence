import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<CarouselItem> carouselItems = [
    CarouselItem(
      imageUrl:
          "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
      title: "50% Off",
      subtitle: "On everything today",
      code: "With code : FSCREATION",
    ),
    CarouselItem(
      imageUrl:
          "https://images.unsplash.com/photo-1632282003890-020318a49e62?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=473&q=80",
      title: "70% Off",
      subtitle: "On everything today",
      code: "With code : FSCREATION",
    ),
  ];

  List products = [
    {
      "id": 16,
      "photo":
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
      "product_name": "Sepatu Casual",
      "price": 150000,
      "category": "Sepatu",
      "description":
          "Sepatu casual dengan desain modern dan nyaman digunakan sehari-hari. Terbuat dari bahan berkualitas tinggi dan tahan lama. Cocok untuk gaya santai dan berbagai kesempatan.",
      "item_size": "40-44",
      "color": "Hitam",
      "brand": "ABC Shoes"
    },
    {
      "id": 17,
      "photo":
          "https://images.unsplash.com/photo-1601200190687-4fec4d91c388?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=725&q=80",
      "product_name": "Kaos Polos",
      "price": 50000,
      "category": "Kaos",
      "description":
          "Kaos polos dengan bahan katun yang lembut dan nyaman. Tersedia dalam berbagai warna yang dapat dipadukan dengan berbagai gaya. Cocok untuk aktivitas sehari-hari dan pakaian santai.",
      "item_size": "S-XL",
      "color": "Putih",
      "brand": "XYZ Clothing"
    },
    {
      "id": 18,
      "photo":
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "product_name": "Tas Ransel",
      "price": 200000,
      "category": "Tas",
      "description":
          "Tas ransel dengan desain modern dan praktis. Terbuat dari bahan berkualitas yang tahan lama dan memiliki banyak kompartemen. Cocok untuk kegiatan sehari-hari dan bepergian.",
      "item_size": "One Size",
      "color": "Hitam",
      "brand": "DEF Bags"
    },
    {
      "id": 19,
      "photo":
          "https://images.unsplash.com/photo-1551028719-00167b16eac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      "product_name": "Jaket Kulit",
      "price": 500000,
      "category": "Jaket",
      "description":
          "Jaket kulit dengan desain klasik dan trendy. Terbuat dari bahan kulit asli yang berkualitas tinggi. Cocok untuk gaya kasual dan memberikan tampilan yang stylish.",
      "item_size": "M-XL",
      "color": "Cokelat",
      "brand": "GHI Leather"
    },
    {
      "id": 20,
      "photo":
          "https://images.unsplash.com/photo-1604176354204-9268737828e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80",
      "product_name": "Celana Jeans",
      "price": 250000,
      "category": "Celana",
      "description":
          "Celana jeans dengan potongan slim fit dan nyaman dipakai. Terbuat dari bahan denim berkualitas yang tahan lama. Cocok untuk gaya santai dan pakaian sehari-hari.",
      "item_size": "28-34",
      "color": "Biru",
      "brand": "JKL Denim"
    },
    {
      "id": 21,
      "photo":
          "https://images.unsplash.com/photo-1542496658-e33a6d0d50f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
      "product_name": "Jam Tangan",
      "price": 300000,
      "category": "Aksesori",
      "description":
          "Jam tangan dengan desain elegan dan modern. Dilengkapi dengan fitur tanggal dan tali kulit yang nyaman. Cocok untuk melengkapi penampilan Anda dalam berbagai kesempatan.",
      "item_size": "One Size",
      "color": "Hitam",
      "brand": "MNO Timepieces"
    },
    {
      "id": 22,
      "photo":
          "https://images.unsplash.com/flagged/photo-1585052201332-b8c0ce30972f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      "product_name": "Baju Dress",
      "price": 150000,
      "category": "Dress",
      "description":
          "Baju dress dengan desain feminin dan modis. Terbuat dari bahan yang nyaman dan ringan. Cocok untuk berbagai kesempatan seperti pesta atau acara formal.",
      "item_size": "S-L",
      "color": "Merah",
      "brand": "PQR Fashion"
    },
    {
      "id": 23,
      "photo":
          "https://images.unsplash.com/photo-1588850561407-ed78c282e89b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80",
      "product_name": "Topi Baseball",
      "price": 75000,
      "category": "Aksesori",
      "description":
          "Topi baseball dengan desain sporty dan casual. Terbuat dari bahan berkualitas tinggi yang tahan lama. Cocok untuk melindungi kepala Anda dari sinar matahari.",
      "item_size": "One Size",
      "color": "Abu-abu",
      "brand": "STU Headwear"
    }
  ];
}

class CarouselItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String code;

  CarouselItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.code,
  });
}
