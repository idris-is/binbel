import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // Two tabs: Create Account and Log In
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32, 12, 32, 32),
              child: Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                alignment: AlignmentDirectional.center,
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 72),
                  child: Text(
                    'BinBel',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 170, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height >= 768.0
                              ? 530
                              : 630,
                          constraints: const BoxConstraints(
                            maxWidth: 570,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff8ecae6), //Tabbarın arka plan rengi
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional.topCenter,
                                  child: TabBar(
                                    controller: _tabController,
                                    isScrollable: true,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            32, 0, 32, 0),
                                    indicatorWeight: 3,
                                    tabs: const [
                                      Tab(text: 'Create Account'),
                                      Tab(text: 'Log In'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      Column(children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(32, 16, 32, 0),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                                label: Text('Username'),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(32, 16, 32, 0),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                              label: Text('Email'),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(32, 16, 32, 0),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                              label: Text('Password'),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(32, 16, 32, 0),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                              label: Text('Confirm Password'),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      60, 20, 60, 20),
                                              child: Text('Sign UP'),
                                            ),
                                          ),
                                        )
                                      ]),
                                       Column(children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(32, 16, 32, 0),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                                label: Text('Username'),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(32, 16, 32, 0),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                              label: Text('Password'),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      60, 20, 60, 20),
                                              child: Text('Log In'),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
