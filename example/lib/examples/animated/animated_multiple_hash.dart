import 'package:blobs/blobs.dart';
import '../../common/app_shell.dart';
import '../../common/button.dart';
import 'package:flutter/material.dart';

class AnimatedMultipleHashExample extends StatelessWidget {
  const AnimatedMultipleHashExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlobController blobCtrl = BlobController();
    return AppShell(
      title: 'Animated fixed blobs',
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Blob.animatedFromHash(
                  hash: [
                    'H4sIAB5VwV4A/w3KwQ0AMQjEwIb8YNmQcLWc0n8b4WWN5N8lMgJn4jLqcZvck8URcqPaFPkFfVizd9wHDGCsqzsAAAA=',
                  ],
                  size: 50,
                ),
                Blob.animatedFromHash(
                  hash: [
                    'H4sIADZVwV4A/w3KsREAMQjEwIYU3IENdi2e77+NJ9hEo5cuQiLaxBXuRXrcSQer8N6jOKSCTtb8R98PT0B1nTwAAAA='
                  ],
                  size: 50,
                ),
                Blob.animatedFromHash(
                  hash: [
                    'H4sIAEFVwV4A/w3LsRHAQAjEwIYUHIcf+Fo87r8NE2wmvXkLS6TXEVEmq+jG55JNOIhZMXjrEc8Oo+8H5uyPHz0AAAA='
                  ],
                  size: 50,
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              child: Blob.animatedFromHash(
                hash: [
                  'H4sIAB5VwV4A/w3KwQ0AMQjEwIb8YNmQcLWc0n8b4WWN5N8lMgJn4jLqcZvck8URcqPaFPkFfVizd9wHDGCsqzsAAAA=',
                  'H4sIADZVwV4A/w3KsREAMQjEwIYU3IENdi2e77+NJ9hEo5cuQiLaxBXuRXrcSQer8N6jOKSCTtb8R98PT0B1nTwAAAA=',
                  'H4sIAEFVwV4A/w3LsRHAQAjEwIYUHIcf+Fo87r8NE2wmvXkLS6TXEVEmq+jG55JNOIhZMXjrEc8Oo+8H5uyPHz0AAAA='
                ],
                size: 400,
                controller: blobCtrl,
              ),
            ),
            Button('Randomize', onTap: () {
              blobCtrl.change();
            })
          ],
        ),
      ),
    );
  }
}