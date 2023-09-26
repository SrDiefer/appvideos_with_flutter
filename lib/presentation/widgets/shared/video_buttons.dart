import 'package:flutter/material.dart';
import 'package:manager_videos/config/helpers/formats.dart';
import 'package:manager_videos/domain/entities/video_post.dart';
class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key,
  required this.video});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.green),
        const SizedBox(height: 20,),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye_outlined, ),
        const SizedBox(height: 20,),
        _CustomIconButton(value: video.views, iconData: Icons.play_circle_outlined, ),

        
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
  required this.value,
  required this.iconData,
  iconColor 
  })
  : color=iconColor?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          IconButton(onPressed: (){}, icon: Icon(iconData, color: color,size: 30,),),
        // IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,)),
        Text(Formats.FormatsReadableNumber(value.toDouble()))
      ],
      
    );
  }
}