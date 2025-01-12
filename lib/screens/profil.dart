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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    /// -- IMAGE
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Image(
                                        image: AssetImage(tProfileImage),
                                      ),
                                    );
                                  });
                            },
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                  image: AssetImage(tProfileImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tProfileHeading,
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            Text(tProfileSubHeading,
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

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
              tabAlignment: TabAlignment.center,
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.amber),
                          child: Center(
                            child: Text('Yazılar $index'),
                          ),
                        ),
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
      ),
    );
  }
}
