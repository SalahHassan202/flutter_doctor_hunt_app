import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00C38A);
    const bg = Color(0xFFF6F7F2);

    return Scaffold(
      backgroundColor: bg,
      bottomNavigationBar: const _BottomNav(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            _HomeHeader(),
            SizedBox(height: 14),
            _LiveDoctorsSection(),
            SizedBox(height: 16),
            _CategoryGrid(),
            SizedBox(height: 18),
            _SectionTitle(title: "Popular Doctor", trailingText: "See all"),
            SizedBox(height: 10),
            _PopularDoctorsRow(),
            SizedBox(height: 18),
            _SectionTitle(title: "Feature Doctor", trailingText: "See all"),
            SizedBox(height: 10),
            _FeatureDoctorsRow(),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}

/// ============================
/// HEADER
/// ============================
class _HomeHeader extends StatelessWidget {
  const _HomeHeader();

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00C38A);

    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
          decoration: const BoxDecoration(
            color: green,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top row: greeting + avatar
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Hi Handwerker!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  _Avatar(size: 34),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Find Your Doctor",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        // Search box floating
        Positioned(
          left: 16,
          right: 16,
          bottom: -15,
          child: _SearchBox(hint: "Search...", onChanged: (v) {}),
        ),
      ],
    );
  }
}

class _SearchBox extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;

  const _SearchBox({required this.hint, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      shadowColor: Colors.black12,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Color(0xFF8A8A8A)),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: const TextStyle(color: Color(0xFFB0B0B0)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Icon(Icons.close, color: Color(0xFF8A8A8A)),
          ],
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final double size;
  const _Avatar({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.25),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(child: Icon(Icons.person, color: Colors.white)),
    );
  }
}

/// ============================
/// LIVE DOCTORS
/// ============================
class _LiveDoctorsSection extends StatelessWidget {
  const _LiveDoctorsSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Live Doctors",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, i) => _LiveDoctorCard(
                live: true,
                // لو عندك صور حطها هنا:
                // imageAsset: "assets/images/live_$i.png",
                imageAsset: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LiveDoctorCard extends StatelessWidget {
  final bool live;
  final String? imageAsset;
  const _LiveDoctorCard({required this.live, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              width: 120,
              height: 120,
              child: imageAsset == null
                  ? Container(
                      color: const Color(0xFFE6E7E1),
                      child: const Center(
                        child: Icon(
                          Icons.image_outlined,
                          color: Color(0xFF9A9A9A),
                        ),
                      ),
                    )
                  : Image.asset(imageAsset!, fit: BoxFit.cover),
            ),
          ),

          // play button
          const Center(
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.play_arrow, size: 18, color: Color(0xFF00C38A)),
            ),
          ),

          // live badge
          if (live)
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4D4D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "LIVE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// ============================
/// CATEGORY GRID
/// ============================
class _CategoryGrid extends StatelessWidget {
  const _CategoryGrid();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Expanded(
            child: _CategoryTile(
              icon: Icons.medical_services,
              color: Color(0xFF3E7BFF),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: _CategoryTile(icon: Icons.spa, color: Color(0xFF00C38A)),
          ),
          SizedBox(width: 10),
          Expanded(
            child: _CategoryTile(
              icon: Icons.visibility,
              color: Color(0xFFFF8A3D),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: _CategoryTile(
              icon: Icons.favorite,
              color: Color(0xFFFF5C5C),
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  const _CategoryTile({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}

/// ============================
/// SECTION TITLE
/// ============================
class _SectionTitle extends StatelessWidget {
  final String title;
  final String trailingText;
  const _SectionTitle({required this.title, required this.trailingText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w900)),
          const Spacer(),
          Text(
            trailingText,
            style: const TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
          ),
        ],
      ),
    );
  }
}

/// ============================
/// POPULAR DOCTORS
/// ============================
class _PopularDoctorsRow extends StatelessWidget {
  const _PopularDoctorsRow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Expanded(
            child: _PopularDoctorCard(
              name: "Dr. Fillerup Grab",
              role: "Medicine Specialist",
              rating: 4,
              imageAsset: null,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: _PopularDoctorCard(
              name: "Dr. Blessing",
              role: "Dentist Specialist",
              rating: 4,
              imageAsset: null,
            ),
          ),
        ],
      ),
    );
  }
}

class _PopularDoctorCard extends StatelessWidget {
  final String name;
  final String role;
  final int rating;
  final String? imageAsset;

  const _PopularDoctorCard({
    required this.name,
    required this.role,
    required this.rating,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          // image
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: SizedBox(
                width: double.infinity,
                child: imageAsset == null
                    ? Container(
                        color: const Color(0xFFE6E7E1),
                        child: const Center(
                          child: Icon(
                            Icons.image_outlined,
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                      )
                    : Image.asset(imageAsset!, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),

          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 2),
          Text(
            role,
            style: const TextStyle(fontSize: 11, color: Color(0xFF8A8A8A)),
          ),
          const SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (i) => Icon(
                i < rating ? Icons.star : Icons.star_border,
                size: 14,
                color: const Color(0xFFFFC107),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ============================
/// FEATURE DOCTORS
/// ============================
class _FeatureDoctorsRow extends StatelessWidget {
  const _FeatureDoctorsRow();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, i) => _FeatureDoctorCard(
          name: i == 0
              ? "Dr. Crick"
              : i == 1
              ? "Dr. Strain"
              : i == 2
              ? "Dr. Lachinet"
              : "Dr. Milner",
          rating: i == 0
              ? "3.7"
              : i == 1
              ? "3.0"
              : i == 2
              ? "2.9"
              : "3.2",
          price: "\$25.00/hours",
          imageAsset: null,
        ),
      ),
    );
  }
}

class _FeatureDoctorCard extends StatelessWidget {
  final String name;
  final String rating;
  final String price;
  final String? imageAsset;

  const _FeatureDoctorCard({
    required this.name,
    required this.rating,
    required this.price,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.favorite_border, size: 16, color: Color(0xFF8A8A8A)),
              Spacer(),
              Icon(Icons.star, size: 14, color: Color(0xFFFFC107)),
              SizedBox(width: 2),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              rating,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(height: 6),

          // avatar
          CircleAvatar(
            radius: 22,
            backgroundColor: const Color(0xFFE6E7E1),
            backgroundImage: imageAsset == null
                ? null
                : AssetImage(imageAsset!),
            child: imageAsset == null
                ? const Icon(Icons.person, color: Color(0xFF9A9A9A))
                : null,
          ),

          const SizedBox(height: 8),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 2),
          Text(
            price,
            style: const TextStyle(fontSize: 10, color: Color(0xFF8A8A8A)),
          ),
        ],
      ),
    );
  }
}

/// ============================
/// BOTTOM NAV
/// ============================
class _BottomNav extends StatelessWidget {
  const _BottomNav();

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00C38A);

    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _NavItem(active: true, icon: Icons.home_filled),
          _NavItem(active: false, icon: Icons.favorite_border),
          _NavItem(active: false, icon: Icons.bookmark_border),
          _NavItem(active: false, icon: Icons.chat_bubble_outline),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final bool active;
  final IconData icon;
  const _NavItem({required this.active, required this.icon});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00C38A);

    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: active ? green : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon, color: active ? Colors.white : const Color(0xFF8A8A8A)),
    );
  }
}
