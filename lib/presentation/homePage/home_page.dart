import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:videoplayerapp/application/bloc/videos_bloc.dart';
import 'package:videoplayerapp/constants/constants.dart';
import 'package:videoplayerapp/presentation/videoplayer/video_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<VideosBloc>(context).add(const VideosEvent.getVideos());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        actions: [
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Videos List',
              style: GoogleFonts.bebasNeue(
                fontSize: 24,
              ),
            ),
          ),
          kHeight20,
          BlocBuilder<VideosBloc, VideosState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while trying to load data'),
                );
              } else if (state.videos != null) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return VideoPlayerScreen(
                                  videoUrl: state
                                      .videos!.videos[0].videoFiles[index].link,
                                );
                              },
                            ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            child: ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(state.videos!.videos[0]
                                    .videoPictures[index].picture),
                              ),
                              title: Text(state
                                  .videos!.videos[0].videoPictures[index].id
                                  .toString()),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite_outline)),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const SizedBox(
                  child: Text('No data'),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
