import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {

  final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: SplashRoute.location,
    routes: $appRoutes,
    extraCodec: const ExtraCodec()
  );

  ref.onDispose(router.dispose);

  return router;
}

class ExtraCodec extends Codec<Object?, Object?> {

  const ExtraCodec();
  
  @override
  Converter<Object?, Object?> get decoder => const ExtraDecoder();
  
  @override
  Converter<Object?, Object?> get encoder => const ExtraEncoder();
}

class ExtraDecoder extends Converter<Object?, Object?> {

  const ExtraDecoder();
  
  @override
  Object? convert(Object? input) {
    return null;
  }
}

class ExtraEncoder extends Converter<Object?, Object?> {

  const ExtraEncoder();
  
  @override
  Object? convert(Object? input) {
    return null;
  }
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<SplashRoute>(path: SplashRoute.location)
class SplashRoute extends GoRouteData {

  const SplashRoute();

  static const String location = '/';
  static const String path = location;

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Placeholder();
  }
}