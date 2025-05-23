// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserCollectionReference
    implements
        UserQuery,
        FirestoreCollectionReference<User, UserQuerySnapshot> {
  factory UserCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return User.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    User value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<User> get reference;

  @override
  UserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDocumentReference> add(User value);
}

class _$UserCollectionReference extends _$UserQuery
    implements UserCollectionReference {
  factory _$UserCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserCollectionReference.fromFirestore,
            toFirestore: UserCollectionReference.toFirestore,
          ),
    );
  }

  _$UserCollectionReference._(
    CollectionReference<User> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot> {
  factory UserDocumentReference(DocumentReference<User> reference) =
      _$UserDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final AssessmentCollectionReference assessments =
      _$AssessmentCollectionReference(
    reference,
  );

  @override
  Stream<UserDocumentSnapshot> snapshots();

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });
}

class _$UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot>
    implements UserDocumentReference {
  _$UserDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final AssessmentCollectionReference assessments =
      _$AssessmentCollectionReference(
    reference,
  );

  @override
  Stream<UserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserQuery implements QueryReference<User, UserQuerySnapshot> {
  @override
  UserQuery limit(int limit);

  @override
  UserQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });
}

class _$UserQuery extends QueryReference<User, UserQuerySnapshot>
    implements UserQuery {
  _$UserQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserQuery limit(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery limitToLast(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['name']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final User? data;
}

class UserQuerySnapshot
    extends FirestoreQuerySnapshot<User, UserQueryDocumentSnapshot> {
  UserQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<User> snapshot,
  ) {
    final docs = snapshot.docs.map(UserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserDocumentSnapshot._,
      );
    }).toList();

    return UserQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDocumentSnapshot>> docChanges;
}

class UserQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UserDocumentSnapshot {
  UserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AssessmentCollectionReference
    implements
        AssessmentQuery,
        FirestoreCollectionReference<Assessment, AssessmentQuerySnapshot> {
  factory AssessmentCollectionReference(
    DocumentReference<User> parent,
  ) = _$AssessmentCollectionReference;

  static Assessment fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Assessment.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Assessment value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Assessment> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  AssessmentDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AssessmentDocumentReference> add(Assessment value);
}

class _$AssessmentCollectionReference extends _$AssessmentQuery
    implements AssessmentCollectionReference {
  factory _$AssessmentCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$AssessmentCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('assessments').withConverter(
            fromFirestore: AssessmentCollectionReference.fromFirestore,
            toFirestore: AssessmentCollectionReference.toFirestore,
          ),
    );
  }

  _$AssessmentCollectionReference._(
    this.parent,
    CollectionReference<Assessment> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Assessment> get reference =>
      super.reference as CollectionReference<Assessment>;

  @override
  AssessmentDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AssessmentDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AssessmentDocumentReference> add(Assessment value) {
    return reference.add(value).then((ref) => AssessmentDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AssessmentCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AssessmentDocumentReference
    extends FirestoreDocumentReference<Assessment, AssessmentDocumentSnapshot> {
  factory AssessmentDocumentReference(DocumentReference<Assessment> reference) =
      _$AssessmentDocumentReference;

  DocumentReference<Assessment> get reference;

  /// A reference to the [AssessmentCollectionReference] containing this document.
  AssessmentCollectionReference get parent {
    return _$AssessmentCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AssessmentDocumentSnapshot> snapshots();

  @override
  Future<AssessmentDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Assessment model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue startDateFieldValue,
    FieldValue endDateFieldValue,
    FieldValue percentFieldValue,
    FieldValue profitFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Assessment model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue startDateFieldValue,
    FieldValue endDateFieldValue,
    FieldValue percentFieldValue,
    FieldValue profitFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Assessment model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue startDateFieldValue,
    FieldValue endDateFieldValue,
    FieldValue percentFieldValue,
    FieldValue profitFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int id,
    FieldValue idFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime endDate,
    FieldValue endDateFieldValue,
    double percent,
    FieldValue percentFieldValue,
    bool profit,
    FieldValue profitFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int id,
    FieldValue idFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime endDate,
    FieldValue endDateFieldValue,
    double percent,
    FieldValue percentFieldValue,
    bool profit,
    FieldValue profitFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int id,
    FieldValue idFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime endDate,
    FieldValue endDateFieldValue,
    double percent,
    FieldValue percentFieldValue,
    bool profit,
    FieldValue profitFieldValue,
  });
}

class _$AssessmentDocumentReference
    extends FirestoreDocumentReference<Assessment, AssessmentDocumentSnapshot>
    implements AssessmentDocumentReference {
  _$AssessmentDocumentReference(this.reference);

  @override
  final DocumentReference<Assessment> reference;

  /// A reference to the [AssessmentCollectionReference] containing this document.
  AssessmentCollectionReference get parent {
    return _$AssessmentCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AssessmentDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AssessmentDocumentSnapshot._);
  }

  @override
  Future<AssessmentDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AssessmentDocumentSnapshot._);
  }

  @override
  Future<AssessmentDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AssessmentDocumentSnapshot._);
  }

  Future<void> set(
    Assessment model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? endDateFieldValue,
    FieldValue? percentFieldValue,
    FieldValue? profitFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$AssessmentFieldMap['id']!: idFieldValue,
      if (startDateFieldValue != null)
        _$AssessmentFieldMap['startDate']!: startDateFieldValue,
      if (endDateFieldValue != null)
        _$AssessmentFieldMap['endDate']!: endDateFieldValue,
      if (percentFieldValue != null)
        _$AssessmentFieldMap['percent']!: percentFieldValue,
      if (profitFieldValue != null)
        _$AssessmentFieldMap['profit']!: profitFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Assessment model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? endDateFieldValue,
    FieldValue? percentFieldValue,
    FieldValue? profitFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$AssessmentFieldMap['id']!: idFieldValue,
      if (startDateFieldValue != null)
        _$AssessmentFieldMap['startDate']!: startDateFieldValue,
      if (endDateFieldValue != null)
        _$AssessmentFieldMap['endDate']!: endDateFieldValue,
      if (percentFieldValue != null)
        _$AssessmentFieldMap['percent']!: percentFieldValue,
      if (profitFieldValue != null)
        _$AssessmentFieldMap['profit']!: profitFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Assessment model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? endDateFieldValue,
    FieldValue? percentFieldValue,
    FieldValue? profitFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$AssessmentFieldMap['id']!: idFieldValue,
      if (startDateFieldValue != null)
        _$AssessmentFieldMap['startDate']!: startDateFieldValue,
      if (endDateFieldValue != null)
        _$AssessmentFieldMap['endDate']!: endDateFieldValue,
      if (percentFieldValue != null)
        _$AssessmentFieldMap['percent']!: percentFieldValue,
      if (profitFieldValue != null)
        _$AssessmentFieldMap['profit']!: profitFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? endDate = _sentinel,
    FieldValue? endDateFieldValue,
    Object? percent = _sentinel,
    FieldValue? percentFieldValue,
    Object? profit = _sentinel,
    FieldValue? profitFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      endDate == _sentinel || endDateFieldValue == null,
      "Cannot specify both endDate and endDateFieldValue",
    );
    assert(
      percent == _sentinel || percentFieldValue == null,
      "Cannot specify both percent and percentFieldValue",
    );
    assert(
      profit == _sentinel || profitFieldValue == null,
      "Cannot specify both profit and profitFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$AssessmentFieldMap['id']!: _$AssessmentPerFieldToJson.id(id as int),
      if (idFieldValue != null) _$AssessmentFieldMap['id']!: idFieldValue,
      if (startDate != _sentinel)
        _$AssessmentFieldMap['startDate']!:
            _$AssessmentPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$AssessmentFieldMap['startDate']!: startDateFieldValue,
      if (endDate != _sentinel)
        _$AssessmentFieldMap['endDate']!:
            _$AssessmentPerFieldToJson.endDate(endDate as DateTime),
      if (endDateFieldValue != null)
        _$AssessmentFieldMap['endDate']!: endDateFieldValue,
      if (percent != _sentinel)
        _$AssessmentFieldMap['percent']!:
            _$AssessmentPerFieldToJson.percent(percent as double),
      if (percentFieldValue != null)
        _$AssessmentFieldMap['percent']!: percentFieldValue,
      if (profit != _sentinel)
        _$AssessmentFieldMap['profit']!:
            _$AssessmentPerFieldToJson.profit(profit as bool),
      if (profitFieldValue != null)
        _$AssessmentFieldMap['profit']!: profitFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? endDate = _sentinel,
    FieldValue? endDateFieldValue,
    Object? percent = _sentinel,
    FieldValue? percentFieldValue,
    Object? profit = _sentinel,
    FieldValue? profitFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      endDate == _sentinel || endDateFieldValue == null,
      "Cannot specify both endDate and endDateFieldValue",
    );
    assert(
      percent == _sentinel || percentFieldValue == null,
      "Cannot specify both percent and percentFieldValue",
    );
    assert(
      profit == _sentinel || profitFieldValue == null,
      "Cannot specify both profit and profitFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$AssessmentFieldMap['id']!: _$AssessmentPerFieldToJson.id(id as int),
      if (idFieldValue != null) _$AssessmentFieldMap['id']!: idFieldValue,
      if (startDate != _sentinel)
        _$AssessmentFieldMap['startDate']!:
            _$AssessmentPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$AssessmentFieldMap['startDate']!: startDateFieldValue,
      if (endDate != _sentinel)
        _$AssessmentFieldMap['endDate']!:
            _$AssessmentPerFieldToJson.endDate(endDate as DateTime),
      if (endDateFieldValue != null)
        _$AssessmentFieldMap['endDate']!: endDateFieldValue,
      if (percent != _sentinel)
        _$AssessmentFieldMap['percent']!:
            _$AssessmentPerFieldToJson.percent(percent as double),
      if (percentFieldValue != null)
        _$AssessmentFieldMap['percent']!: percentFieldValue,
      if (profit != _sentinel)
        _$AssessmentFieldMap['profit']!:
            _$AssessmentPerFieldToJson.profit(profit as bool),
      if (profitFieldValue != null)
        _$AssessmentFieldMap['profit']!: profitFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? endDate = _sentinel,
    FieldValue? endDateFieldValue,
    Object? percent = _sentinel,
    FieldValue? percentFieldValue,
    Object? profit = _sentinel,
    FieldValue? profitFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      endDate == _sentinel || endDateFieldValue == null,
      "Cannot specify both endDate and endDateFieldValue",
    );
    assert(
      percent == _sentinel || percentFieldValue == null,
      "Cannot specify both percent and percentFieldValue",
    );
    assert(
      profit == _sentinel || profitFieldValue == null,
      "Cannot specify both profit and profitFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$AssessmentFieldMap['id']!: _$AssessmentPerFieldToJson.id(id as int),
      if (idFieldValue != null) _$AssessmentFieldMap['id']!: idFieldValue,
      if (startDate != _sentinel)
        _$AssessmentFieldMap['startDate']!:
            _$AssessmentPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$AssessmentFieldMap['startDate']!: startDateFieldValue,
      if (endDate != _sentinel)
        _$AssessmentFieldMap['endDate']!:
            _$AssessmentPerFieldToJson.endDate(endDate as DateTime),
      if (endDateFieldValue != null)
        _$AssessmentFieldMap['endDate']!: endDateFieldValue,
      if (percent != _sentinel)
        _$AssessmentFieldMap['percent']!:
            _$AssessmentPerFieldToJson.percent(percent as double),
      if (percentFieldValue != null)
        _$AssessmentFieldMap['percent']!: percentFieldValue,
      if (profit != _sentinel)
        _$AssessmentFieldMap['profit']!:
            _$AssessmentPerFieldToJson.profit(profit as bool),
      if (profitFieldValue != null)
        _$AssessmentFieldMap['profit']!: profitFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AssessmentDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AssessmentQuery
    implements QueryReference<Assessment, AssessmentQuerySnapshot> {
  @override
  AssessmentQuery limit(int limit);

  @override
  AssessmentQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  AssessmentQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery whereId({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery whereStartDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery whereEndDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery wherePercent({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery whereProfit({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  AssessmentQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderById({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderByStartDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderByEndDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderByPercent({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderByProfit({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });
}

class _$AssessmentQuery
    extends QueryReference<Assessment, AssessmentQuerySnapshot>
    implements AssessmentQuery {
  _$AssessmentQuery(
    this._collection, {
    required Query<Assessment> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AssessmentQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AssessmentQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AssessmentQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AssessmentQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AssessmentQuery limit(int limit) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery limitToLast(int limit) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.id(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.id(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.id(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.id(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.id(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.id(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.id(e)),
        whereNotIn: whereNotIn?.map((e) => _$AssessmentPerFieldToJson.id(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereStartDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['startDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.startDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.startDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.startDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .startDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.startDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .startDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.startDate(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.startDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereEndDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['endDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.endDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.endDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.endDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .endDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.endDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .endDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.endDate(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.endDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery wherePercent({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['percent']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.percent(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.percent(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.percent(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.percent(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.percent(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .percent(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.percent(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.percent(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereProfit({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['profit']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.profit(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.profit(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.profit(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.profit(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.profit(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.profit(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.profit(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.profit(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssessmentQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssessmentQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$AssessmentFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssessmentQuery orderByStartDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AssessmentFieldMap['startDate']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssessmentQuery orderByEndDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AssessmentFieldMap['endDate']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssessmentQuery orderByPercent({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AssessmentFieldMap['percent']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssessmentQuery orderByProfit({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AssessmentFieldMap['profit']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AssessmentQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AssessmentDocumentSnapshot extends FirestoreDocumentSnapshot<Assessment> {
  AssessmentDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Assessment> snapshot;

  @override
  AssessmentDocumentReference get reference {
    return AssessmentDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Assessment? data;
}

class AssessmentQuerySnapshot extends FirestoreQuerySnapshot<Assessment,
    AssessmentQueryDocumentSnapshot> {
  AssessmentQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AssessmentQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Assessment> snapshot,
  ) {
    final docs = snapshot.docs.map(AssessmentQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AssessmentDocumentSnapshot._,
      );
    }).toList();

    return AssessmentQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AssessmentDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AssessmentDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AssessmentDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Assessment> snapshot;

  @override
  final List<AssessmentQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AssessmentDocumentSnapshot>> docChanges;
}

class AssessmentQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Assessment>
    implements AssessmentDocumentSnapshot {
  AssessmentQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Assessment> snapshot;

  @override
  final Assessment data;

  @override
  AssessmentDocumentReference get reference {
    return AssessmentDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String,
      email: json['email'] as String,
    );

const _$UserFieldMap = <String, String>{
  'name': 'name',
  'email': 'email',
};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

Assessment _$AssessmentFromJson(Map<String, dynamic> json) => Assessment(
      id: (json['id'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      percent: (json['percent'] as num).toDouble(),
      profit: json['profit'] as bool,
    );

const _$AssessmentFieldMap = <String, String>{
  'id': 'id',
  'startDate': 'startDate',
  'endDate': 'endDate',
  'percent': 'percent',
  'profit': 'profit',
};

// ignore: unused_element
abstract class _$AssessmentPerFieldToJson {
  // ignore: unused_element
  static Object? id(int instance) => instance;
  // ignore: unused_element
  static Object? startDate(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? endDate(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? percent(double instance) => instance;
  // ignore: unused_element
  static Object? profit(bool instance) => instance;
}

Map<String, dynamic> _$AssessmentToJson(Assessment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'percent': instance.percent,
      'profit': instance.profit,
    };
