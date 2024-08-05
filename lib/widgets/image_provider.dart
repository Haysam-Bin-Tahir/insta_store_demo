import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

typedef PlaceholderBuilder = Widget Function(BuildContext context);
typedef ProgressIndicatorBuilder = Widget Function(
    BuildContext context, ImageChunkEvent? chunkEvent);
typedef ErrorBuilder = Widget Function(
    BuildContext context, Object object, StackTrace? trace);

class AppImageProvider extends StatelessWidget {
  final String? url;
  final String? blurHash;
  final BoxFit boxFit;
  final PlaceholderBuilder? placeholderWidgetBuilder;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final ErrorBuilder? errorWidgetBuilder;
  final bool enablePhotoView;
  final int fadeDurationInMilliseconds;
  final String? photoViewUrl;
  const AppImageProvider(
    this.url, {
    super.key,
    this.blurHash,
    // Using BoxFit.cover + AspectRatio neatly crops images
    this.boxFit = BoxFit.cover,
    this.placeholderWidgetBuilder,
    this.progressIndicatorBuilder,
    this.enablePhotoView = false,
    this.fadeDurationInMilliseconds = 500,
    this.photoViewUrl,
    this.errorWidgetBuilder,
  }) : assert(placeholderWidgetBuilder == null ||
            progressIndicatorBuilder == null);

  @override
  Widget build(BuildContext context) {
    // https: //pub.dev/packages/cached_network_image
    // Also works with provider
    assert(url != null || placeholderWidgetBuilder != null);
    if (url == null || url!.isEmpty) return placeholderWidgetBuilder!(context);
    return _buildCachedNetworkImage;
  }

  Widget get _buildCachedNetworkImage {
    // OctoImage is the new package from the same team which developed CachedNetworkImage
    // They recommend to use it instead of CachedNetworkImage in case we are using blurHash
    // https://github.com/Baseflow/flutter_cached_network_image/issues/361
    return OctoImage(
      // let the container of this image do whatever it wants
      fit: boxFit,
      image: CachedNetworkImageProvider(url!),
      placeholderBuilder: (context) => const AppGenericPlaceholder(),
      progressIndicatorBuilder: progressIndicatorBuilder,
      fadeInDuration: Duration(milliseconds: fadeDurationInMilliseconds),
      fadeOutDuration: Duration(milliseconds: fadeDurationInMilliseconds),
      errorBuilder: errorWidgetBuilder ??
          (context, error, stacktrace) => const AppGenericPlaceholder(),
    );
  }
}

class AppGenericPlaceholder extends StatelessWidget {
  final bool circular;

  const AppGenericPlaceholder({super.key}) : circular = false;
  const AppGenericPlaceholder.circular({super.key}) : circular = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circular ? 50 : 0),
        color: Colors.grey.shade300,
      ),
    );
  }
}
