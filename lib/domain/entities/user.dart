import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String? name;
  final String role; // e.g. 'client', 'admin'
  final String? skillLevel;
  final String? track;
  final String? avatarUrl;
  final bool isActive;
  final DateTime createdAt;

  const UserEntity({
    required this.id,
    required this.email,
    this.name,
    this.role = 'client',
    this.skillLevel,
    this.track,
    this.avatarUrl,
    this.isActive = true,
    required this.createdAt,
  });

  UserEntity copyWith({
    String? id,
    String? email,
    String? name,
    String? role,
    String? skillLevel,
    String? track,
    String? avatarUrl,
    bool? isActive,
    DateTime? createdAt,
  }) {
    return UserEntity(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      role: role ?? this.role,
      skillLevel: skillLevel ?? this.skillLevel,
      track: track ?? this.track,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        role,
        skillLevel,
        track,
        avatarUrl,
        isActive,
        createdAt,
      ];
}