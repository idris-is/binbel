import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController
      _tabController; // TabController'ı sınıf değişkeni olarak tanımlıyoruz.

  @override
  void initState() {
    super.initState();
    // TabController'ı burada başlatıyoruz.
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TabController'ı temizliyoruz.
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String tProfileImage = "assets/foto.png";
    String tProfileHeading = "İdris İŞ";
    String tProfileSubHeading = "Flutter Developer";

    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  /// -- IMAGE
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              image: AssetImage(tProfileImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(tProfileHeading,
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text(tProfileSubHeading,
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Gönderi',
                            ),
                            Text(
                              '24',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Takipçi',
                            ),
                            Text(
                              '1280',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Takip',
                            ),
                            Text(
                              '245',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GitHub Linki',
                        ),
                        Text(
                          'LinkedIn Linki',
                        ),
                        Text(
                          'Twitter Linki',
                        ),
                        Text(
                          'Instagram Linki',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// -- BUTTON
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          side: BorderSide.none,
                          shape: const StadiumBorder()),
                      child: const Text('Edit Profile',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          )
        ];
      },
      body: Column(
        children: [
          TabBar(
            isScrollable: true,
            dividerColor: Colors.amber,
            tabs: const [
              Tab(text: 'Yazılar'),
              Tab(text: 'Fotoğraflar'),
              Tab(text: 'Videolar'),
              Tab(
                text: 'Sertfikalar',
              )
            ],
            controller: _tabController, // Controller'ı burada kullanıyoruz.
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text('Yazılar $index'),
                    );
                  },
                ),
                const Center(
                  child: Text('Fotoğraflar'),
                ),
                const Center(
                  child: Text('Videolar'),
                ),
                const Center(
                  child: Text('Sertifikalar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
