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

  late final AnswerCollectionReference answers = _$AnswerCollectionReference(
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

  late final AnswerCollectionReference answers = _$AnswerCollectionReference(
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

  late final IncomeCollectionReference incomes = _$IncomeCollectionReference(
    reference,
  );

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
    FieldValue monthFieldValue,
    FieldValue yearFieldValue,
    FieldValue inProgressFieldValue,
    FieldValue startBalanceFieldValue,
    FieldValue endBalanceFieldValue,
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
    FieldValue monthFieldValue,
    FieldValue yearFieldValue,
    FieldValue inProgressFieldValue,
    FieldValue startBalanceFieldValue,
    FieldValue endBalanceFieldValue,
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
    FieldValue monthFieldValue,
    FieldValue yearFieldValue,
    FieldValue inProgressFieldValue,
    FieldValue startBalanceFieldValue,
    FieldValue endBalanceFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int month,
    FieldValue monthFieldValue,
    int year,
    FieldValue yearFieldValue,
    bool inProgress,
    FieldValue inProgressFieldValue,
    double? startBalance,
    FieldValue startBalanceFieldValue,
    double? endBalance,
    FieldValue endBalanceFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int month,
    FieldValue monthFieldValue,
    int year,
    FieldValue yearFieldValue,
    bool inProgress,
    FieldValue inProgressFieldValue,
    double? startBalance,
    FieldValue startBalanceFieldValue,
    double? endBalance,
    FieldValue endBalanceFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int month,
    FieldValue monthFieldValue,
    int year,
    FieldValue yearFieldValue,
    bool inProgress,
    FieldValue inProgressFieldValue,
    double? startBalance,
    FieldValue startBalanceFieldValue,
    double? endBalance,
    FieldValue endBalanceFieldValue,
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

  late final IncomeCollectionReference incomes = _$IncomeCollectionReference(
    reference,
  );

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
    FieldValue? monthFieldValue,
    FieldValue? yearFieldValue,
    FieldValue? inProgressFieldValue,
    FieldValue? startBalanceFieldValue,
    FieldValue? endBalanceFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (monthFieldValue != null)
        _$AssessmentFieldMap['month']!: monthFieldValue,
      if (yearFieldValue != null) _$AssessmentFieldMap['year']!: yearFieldValue,
      if (inProgressFieldValue != null)
        _$AssessmentFieldMap['inProgress']!: inProgressFieldValue,
      if (startBalanceFieldValue != null)
        _$AssessmentFieldMap['startBalance']!: startBalanceFieldValue,
      if (endBalanceFieldValue != null)
        _$AssessmentFieldMap['endBalance']!: endBalanceFieldValue,
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
    FieldValue? monthFieldValue,
    FieldValue? yearFieldValue,
    FieldValue? inProgressFieldValue,
    FieldValue? startBalanceFieldValue,
    FieldValue? endBalanceFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (monthFieldValue != null)
        _$AssessmentFieldMap['month']!: monthFieldValue,
      if (yearFieldValue != null) _$AssessmentFieldMap['year']!: yearFieldValue,
      if (inProgressFieldValue != null)
        _$AssessmentFieldMap['inProgress']!: inProgressFieldValue,
      if (startBalanceFieldValue != null)
        _$AssessmentFieldMap['startBalance']!: startBalanceFieldValue,
      if (endBalanceFieldValue != null)
        _$AssessmentFieldMap['endBalance']!: endBalanceFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Assessment model, {
    SetOptions? options,
    FieldValue? monthFieldValue,
    FieldValue? yearFieldValue,
    FieldValue? inProgressFieldValue,
    FieldValue? startBalanceFieldValue,
    FieldValue? endBalanceFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (monthFieldValue != null)
        _$AssessmentFieldMap['month']!: monthFieldValue,
      if (yearFieldValue != null) _$AssessmentFieldMap['year']!: yearFieldValue,
      if (inProgressFieldValue != null)
        _$AssessmentFieldMap['inProgress']!: inProgressFieldValue,
      if (startBalanceFieldValue != null)
        _$AssessmentFieldMap['startBalance']!: startBalanceFieldValue,
      if (endBalanceFieldValue != null)
        _$AssessmentFieldMap['endBalance']!: endBalanceFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? month = _sentinel,
    FieldValue? monthFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? inProgress = _sentinel,
    FieldValue? inProgressFieldValue,
    Object? startBalance = _sentinel,
    FieldValue? startBalanceFieldValue,
    Object? endBalance = _sentinel,
    FieldValue? endBalanceFieldValue,
  }) async {
    assert(
      month == _sentinel || monthFieldValue == null,
      "Cannot specify both month and monthFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      inProgress == _sentinel || inProgressFieldValue == null,
      "Cannot specify both inProgress and inProgressFieldValue",
    );
    assert(
      startBalance == _sentinel || startBalanceFieldValue == null,
      "Cannot specify both startBalance and startBalanceFieldValue",
    );
    assert(
      endBalance == _sentinel || endBalanceFieldValue == null,
      "Cannot specify both endBalance and endBalanceFieldValue",
    );
    final json = {
      if (month != _sentinel)
        _$AssessmentFieldMap['month']!:
            _$AssessmentPerFieldToJson.month(month as int),
      if (monthFieldValue != null)
        _$AssessmentFieldMap['month']!: monthFieldValue,
      if (year != _sentinel)
        _$AssessmentFieldMap['year']!:
            _$AssessmentPerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$AssessmentFieldMap['year']!: yearFieldValue,
      if (inProgress != _sentinel)
        _$AssessmentFieldMap['inProgress']!:
            _$AssessmentPerFieldToJson.inProgress(inProgress as bool),
      if (inProgressFieldValue != null)
        _$AssessmentFieldMap['inProgress']!: inProgressFieldValue,
      if (startBalance != _sentinel)
        _$AssessmentFieldMap['startBalance']!:
            _$AssessmentPerFieldToJson.startBalance(startBalance as double?),
      if (startBalanceFieldValue != null)
        _$AssessmentFieldMap['startBalance']!: startBalanceFieldValue,
      if (endBalance != _sentinel)
        _$AssessmentFieldMap['endBalance']!:
            _$AssessmentPerFieldToJson.endBalance(endBalance as double?),
      if (endBalanceFieldValue != null)
        _$AssessmentFieldMap['endBalance']!: endBalanceFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? month = _sentinel,
    FieldValue? monthFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? inProgress = _sentinel,
    FieldValue? inProgressFieldValue,
    Object? startBalance = _sentinel,
    FieldValue? startBalanceFieldValue,
    Object? endBalance = _sentinel,
    FieldValue? endBalanceFieldValue,
  }) {
    assert(
      month == _sentinel || monthFieldValue == null,
      "Cannot specify both month and monthFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      inProgress == _sentinel || inProgressFieldValue == null,
      "Cannot specify both inProgress and inProgressFieldValue",
    );
    assert(
      startBalance == _sentinel || startBalanceFieldValue == null,
      "Cannot specify both startBalance and startBalanceFieldValue",
    );
    assert(
      endBalance == _sentinel || endBalanceFieldValue == null,
      "Cannot specify both endBalance and endBalanceFieldValue",
    );
    final json = {
      if (month != _sentinel)
        _$AssessmentFieldMap['month']!:
            _$AssessmentPerFieldToJson.month(month as int),
      if (monthFieldValue != null)
        _$AssessmentFieldMap['month']!: monthFieldValue,
      if (year != _sentinel)
        _$AssessmentFieldMap['year']!:
            _$AssessmentPerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$AssessmentFieldMap['year']!: yearFieldValue,
      if (inProgress != _sentinel)
        _$AssessmentFieldMap['inProgress']!:
            _$AssessmentPerFieldToJson.inProgress(inProgress as bool),
      if (inProgressFieldValue != null)
        _$AssessmentFieldMap['inProgress']!: inProgressFieldValue,
      if (startBalance != _sentinel)
        _$AssessmentFieldMap['startBalance']!:
            _$AssessmentPerFieldToJson.startBalance(startBalance as double?),
      if (startBalanceFieldValue != null)
        _$AssessmentFieldMap['startBalance']!: startBalanceFieldValue,
      if (endBalance != _sentinel)
        _$AssessmentFieldMap['endBalance']!:
            _$AssessmentPerFieldToJson.endBalance(endBalance as double?),
      if (endBalanceFieldValue != null)
        _$AssessmentFieldMap['endBalance']!: endBalanceFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? month = _sentinel,
    FieldValue? monthFieldValue,
    Object? year = _sentinel,
    FieldValue? yearFieldValue,
    Object? inProgress = _sentinel,
    FieldValue? inProgressFieldValue,
    Object? startBalance = _sentinel,
    FieldValue? startBalanceFieldValue,
    Object? endBalance = _sentinel,
    FieldValue? endBalanceFieldValue,
  }) {
    assert(
      month == _sentinel || monthFieldValue == null,
      "Cannot specify both month and monthFieldValue",
    );
    assert(
      year == _sentinel || yearFieldValue == null,
      "Cannot specify both year and yearFieldValue",
    );
    assert(
      inProgress == _sentinel || inProgressFieldValue == null,
      "Cannot specify both inProgress and inProgressFieldValue",
    );
    assert(
      startBalance == _sentinel || startBalanceFieldValue == null,
      "Cannot specify both startBalance and startBalanceFieldValue",
    );
    assert(
      endBalance == _sentinel || endBalanceFieldValue == null,
      "Cannot specify both endBalance and endBalanceFieldValue",
    );
    final json = {
      if (month != _sentinel)
        _$AssessmentFieldMap['month']!:
            _$AssessmentPerFieldToJson.month(month as int),
      if (monthFieldValue != null)
        _$AssessmentFieldMap['month']!: monthFieldValue,
      if (year != _sentinel)
        _$AssessmentFieldMap['year']!:
            _$AssessmentPerFieldToJson.year(year as int),
      if (yearFieldValue != null) _$AssessmentFieldMap['year']!: yearFieldValue,
      if (inProgress != _sentinel)
        _$AssessmentFieldMap['inProgress']!:
            _$AssessmentPerFieldToJson.inProgress(inProgress as bool),
      if (inProgressFieldValue != null)
        _$AssessmentFieldMap['inProgress']!: inProgressFieldValue,
      if (startBalance != _sentinel)
        _$AssessmentFieldMap['startBalance']!:
            _$AssessmentPerFieldToJson.startBalance(startBalance as double?),
      if (startBalanceFieldValue != null)
        _$AssessmentFieldMap['startBalance']!: startBalanceFieldValue,
      if (endBalance != _sentinel)
        _$AssessmentFieldMap['endBalance']!:
            _$AssessmentPerFieldToJson.endBalance(endBalance as double?),
      if (endBalanceFieldValue != null)
        _$AssessmentFieldMap['endBalance']!: endBalanceFieldValue,
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

  AssessmentQuery whereMonth({
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

  AssessmentQuery whereYear({
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

  AssessmentQuery whereInProgress({
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

  AssessmentQuery whereStartBalance({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
    bool? isNull,
  });

  AssessmentQuery whereEndBalance({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
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

  AssessmentQuery orderByMonth({
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

  AssessmentQuery orderByYear({
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

  AssessmentQuery orderByInProgress({
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

  AssessmentQuery orderByStartBalance({
    bool descending = false,
    double? startAt,
    double? startAfter,
    double? endAt,
    double? endBefore,
    AssessmentDocumentSnapshot? startAtDocument,
    AssessmentDocumentSnapshot? endAtDocument,
    AssessmentDocumentSnapshot? endBeforeDocument,
    AssessmentDocumentSnapshot? startAfterDocument,
  });

  AssessmentQuery orderByEndBalance({
    bool descending = false,
    double? startAt,
    double? startAfter,
    double? endAt,
    double? endBefore,
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
  AssessmentQuery whereMonth({
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
        _$AssessmentFieldMap['month']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.month(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.month(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.month(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.month(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.month(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.month(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.month(e)),
        whereNotIn: whereNotIn?.map((e) => _$AssessmentPerFieldToJson.month(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereYear({
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
        _$AssessmentFieldMap['year']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.year(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.year(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.year(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.year(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.year(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.year(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.year(e)),
        whereNotIn: whereNotIn?.map((e) => _$AssessmentPerFieldToJson.year(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereInProgress({
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
        _$AssessmentFieldMap['inProgress']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.inProgress(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.inProgress(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.inProgress(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson.inProgress(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.inProgress(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .inProgress(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.inProgress(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.inProgress(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereStartBalance({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['startBalance']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.startBalance(isEqualTo as double?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.startBalance(isNotEqualTo as double?)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.startBalance(isLessThan as double?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .startBalance(isLessThanOrEqualTo as double?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.startBalance(isGreaterThan as double?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .startBalance(isGreaterThanOrEqualTo as double?)
            : null,
        whereIn:
            whereIn?.map((e) => _$AssessmentPerFieldToJson.startBalance(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.startBalance(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssessmentQuery whereEndBalance({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AssessmentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssessmentFieldMap['endBalance']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.endBalance(isEqualTo as double?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssessmentPerFieldToJson.endBalance(isNotEqualTo as double?)
            : null,
        isLessThan: isLessThan != null
            ? _$AssessmentPerFieldToJson.endBalance(isLessThan as double?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .endBalance(isLessThanOrEqualTo as double?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssessmentPerFieldToJson.endBalance(isGreaterThan as double?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssessmentPerFieldToJson
                .endBalance(isGreaterThanOrEqualTo as double?)
            : null,
        whereIn: whereIn?.map((e) => _$AssessmentPerFieldToJson.endBalance(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssessmentPerFieldToJson.endBalance(e)),
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
  AssessmentQuery orderByMonth({
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
        .orderBy(_$AssessmentFieldMap['month']!, descending: descending);
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
  AssessmentQuery orderByYear({
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
    final query = $referenceWithoutCursor.orderBy(_$AssessmentFieldMap['year']!,
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
  AssessmentQuery orderByInProgress({
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
        .orderBy(_$AssessmentFieldMap['inProgress']!, descending: descending);
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
  AssessmentQuery orderByStartBalance({
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
        .orderBy(_$AssessmentFieldMap['startBalance']!, descending: descending);
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
  AssessmentQuery orderByEndBalance({
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
        .orderBy(_$AssessmentFieldMap['endBalance']!, descending: descending);
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

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class IncomeCollectionReference
    implements
        IncomeQuery,
        FirestoreCollectionReference<Income, IncomeQuerySnapshot> {
  factory IncomeCollectionReference(
    DocumentReference<Assessment> parent,
  ) = _$IncomeCollectionReference;

  static Income fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Income.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Income value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Income> get reference;

  /// A reference to the containing [AssessmentDocumentReference] if this is a subcollection.
  AssessmentDocumentReference get parent;

  @override
  IncomeDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<IncomeDocumentReference> add(Income value);
}

class _$IncomeCollectionReference extends _$IncomeQuery
    implements IncomeCollectionReference {
  factory _$IncomeCollectionReference(
    DocumentReference<Assessment> parent,
  ) {
    return _$IncomeCollectionReference._(
      AssessmentDocumentReference(parent),
      parent.collection('incomes').withConverter(
            fromFirestore: IncomeCollectionReference.fromFirestore,
            toFirestore: IncomeCollectionReference.toFirestore,
          ),
    );
  }

  _$IncomeCollectionReference._(
    this.parent,
    CollectionReference<Income> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final AssessmentDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Income> get reference =>
      super.reference as CollectionReference<Income>;

  @override
  IncomeDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return IncomeDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<IncomeDocumentReference> add(Income value) {
    return reference.add(value).then((ref) => IncomeDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$IncomeCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class IncomeDocumentReference
    extends FirestoreDocumentReference<Income, IncomeDocumentSnapshot> {
  factory IncomeDocumentReference(DocumentReference<Income> reference) =
      _$IncomeDocumentReference;

  DocumentReference<Income> get reference;

  /// A reference to the [IncomeCollectionReference] containing this document.
  IncomeCollectionReference get parent {
    return _$IncomeCollectionReference(
      reference.parent.parent!.withConverter<Assessment>(
        fromFirestore: AssessmentCollectionReference.fromFirestore,
        toFirestore: AssessmentCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<IncomeDocumentSnapshot> snapshots();

  @override
  Future<IncomeDocumentSnapshot> get([GetOptions? options]);

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
    Income model, {
    SetOptions? options,
    FieldValue dayFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue typeFieldValue,
    FieldValue castFieldValue,
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
    Income model, {
    SetOptions? options,
    FieldValue dayFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue typeFieldValue,
    FieldValue castFieldValue,
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
    Income model, {
    SetOptions? options,
    FieldValue dayFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue typeFieldValue,
    FieldValue castFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int day,
    FieldValue dayFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String type,
    FieldValue typeFieldValue,
    double cast,
    FieldValue castFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int day,
    FieldValue dayFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String type,
    FieldValue typeFieldValue,
    double cast,
    FieldValue castFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int day,
    FieldValue dayFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String type,
    FieldValue typeFieldValue,
    double cast,
    FieldValue castFieldValue,
  });
}

class _$IncomeDocumentReference
    extends FirestoreDocumentReference<Income, IncomeDocumentSnapshot>
    implements IncomeDocumentReference {
  _$IncomeDocumentReference(this.reference);

  @override
  final DocumentReference<Income> reference;

  /// A reference to the [IncomeCollectionReference] containing this document.
  IncomeCollectionReference get parent {
    return _$IncomeCollectionReference(
      reference.parent.parent!.withConverter<Assessment>(
        fromFirestore: AssessmentCollectionReference.fromFirestore,
        toFirestore: AssessmentCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<IncomeDocumentSnapshot> snapshots() {
    return reference.snapshots().map(IncomeDocumentSnapshot._);
  }

  @override
  Future<IncomeDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(IncomeDocumentSnapshot._);
  }

  @override
  Future<IncomeDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(IncomeDocumentSnapshot._);
  }

  Future<void> set(
    Income model, {
    SetOptions? options,
    FieldValue? dayFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? castFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (dayFieldValue != null) _$IncomeFieldMap['day']!: dayFieldValue,
      if (descriptionFieldValue != null)
        _$IncomeFieldMap['description']!: descriptionFieldValue,
      if (typeFieldValue != null) _$IncomeFieldMap['type']!: typeFieldValue,
      if (castFieldValue != null) _$IncomeFieldMap['cast']!: castFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Income model, {
    SetOptions? options,
    FieldValue? dayFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? castFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (dayFieldValue != null) _$IncomeFieldMap['day']!: dayFieldValue,
      if (descriptionFieldValue != null)
        _$IncomeFieldMap['description']!: descriptionFieldValue,
      if (typeFieldValue != null) _$IncomeFieldMap['type']!: typeFieldValue,
      if (castFieldValue != null) _$IncomeFieldMap['cast']!: castFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Income model, {
    SetOptions? options,
    FieldValue? dayFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? castFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (dayFieldValue != null) _$IncomeFieldMap['day']!: dayFieldValue,
      if (descriptionFieldValue != null)
        _$IncomeFieldMap['description']!: descriptionFieldValue,
      if (typeFieldValue != null) _$IncomeFieldMap['type']!: typeFieldValue,
      if (castFieldValue != null) _$IncomeFieldMap['cast']!: castFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? day = _sentinel,
    FieldValue? dayFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? cast = _sentinel,
    FieldValue? castFieldValue,
  }) async {
    assert(
      day == _sentinel || dayFieldValue == null,
      "Cannot specify both day and dayFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      cast == _sentinel || castFieldValue == null,
      "Cannot specify both cast and castFieldValue",
    );
    final json = {
      if (day != _sentinel)
        _$IncomeFieldMap['day']!: _$IncomePerFieldToJson.day(day as int),
      if (dayFieldValue != null) _$IncomeFieldMap['day']!: dayFieldValue,
      if (description != _sentinel)
        _$IncomeFieldMap['description']!:
            _$IncomePerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$IncomeFieldMap['description']!: descriptionFieldValue,
      if (type != _sentinel)
        _$IncomeFieldMap['type']!: _$IncomePerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$IncomeFieldMap['type']!: typeFieldValue,
      if (cast != _sentinel)
        _$IncomeFieldMap['cast']!: _$IncomePerFieldToJson.cast(cast as double),
      if (castFieldValue != null) _$IncomeFieldMap['cast']!: castFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? day = _sentinel,
    FieldValue? dayFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? cast = _sentinel,
    FieldValue? castFieldValue,
  }) {
    assert(
      day == _sentinel || dayFieldValue == null,
      "Cannot specify both day and dayFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      cast == _sentinel || castFieldValue == null,
      "Cannot specify both cast and castFieldValue",
    );
    final json = {
      if (day != _sentinel)
        _$IncomeFieldMap['day']!: _$IncomePerFieldToJson.day(day as int),
      if (dayFieldValue != null) _$IncomeFieldMap['day']!: dayFieldValue,
      if (description != _sentinel)
        _$IncomeFieldMap['description']!:
            _$IncomePerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$IncomeFieldMap['description']!: descriptionFieldValue,
      if (type != _sentinel)
        _$IncomeFieldMap['type']!: _$IncomePerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$IncomeFieldMap['type']!: typeFieldValue,
      if (cast != _sentinel)
        _$IncomeFieldMap['cast']!: _$IncomePerFieldToJson.cast(cast as double),
      if (castFieldValue != null) _$IncomeFieldMap['cast']!: castFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? day = _sentinel,
    FieldValue? dayFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? cast = _sentinel,
    FieldValue? castFieldValue,
  }) {
    assert(
      day == _sentinel || dayFieldValue == null,
      "Cannot specify both day and dayFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      cast == _sentinel || castFieldValue == null,
      "Cannot specify both cast and castFieldValue",
    );
    final json = {
      if (day != _sentinel)
        _$IncomeFieldMap['day']!: _$IncomePerFieldToJson.day(day as int),
      if (dayFieldValue != null) _$IncomeFieldMap['day']!: dayFieldValue,
      if (description != _sentinel)
        _$IncomeFieldMap['description']!:
            _$IncomePerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$IncomeFieldMap['description']!: descriptionFieldValue,
      if (type != _sentinel)
        _$IncomeFieldMap['type']!: _$IncomePerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$IncomeFieldMap['type']!: typeFieldValue,
      if (cast != _sentinel)
        _$IncomeFieldMap['cast']!: _$IncomePerFieldToJson.cast(cast as double),
      if (castFieldValue != null) _$IncomeFieldMap['cast']!: castFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is IncomeDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class IncomeQuery
    implements QueryReference<Income, IncomeQuerySnapshot> {
  @override
  IncomeQuery limit(int limit);

  @override
  IncomeQuery limitToLast(int limit);

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
  IncomeQuery whereFieldPath(
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

  IncomeQuery whereDocumentId({
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

  IncomeQuery whereDay({
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

  IncomeQuery whereDescription({
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

  IncomeQuery whereType({
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

  IncomeQuery whereCast({
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
  IncomeQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  });

  IncomeQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  });

  IncomeQuery orderByDay({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  });

  IncomeQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  });

  IncomeQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  });

  IncomeQuery orderByCast({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  });
}

class _$IncomeQuery extends QueryReference<Income, IncomeQuerySnapshot>
    implements IncomeQuery {
  _$IncomeQuery(
    this._collection, {
    required Query<Income> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<IncomeQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(IncomeQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<IncomeQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(IncomeQuerySnapshot._fromQuerySnapshot);
  }

  @override
  IncomeQuery limit(int limit) {
    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IncomeQuery limitToLast(int limit) {
    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IncomeQuery whereFieldPath(
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
    return _$IncomeQuery(
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
  IncomeQuery whereDocumentId({
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
    return _$IncomeQuery(
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
  IncomeQuery whereDay({
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
    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$IncomeFieldMap['day']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$IncomePerFieldToJson.day(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$IncomePerFieldToJson.day(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$IncomePerFieldToJson.day(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$IncomePerFieldToJson.day(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$IncomePerFieldToJson.day(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$IncomePerFieldToJson.day(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$IncomePerFieldToJson.day(e)),
        whereNotIn: whereNotIn?.map((e) => _$IncomePerFieldToJson.day(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IncomeQuery whereDescription({
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
    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$IncomeFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$IncomePerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$IncomePerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$IncomePerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$IncomePerFieldToJson.description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$IncomePerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$IncomePerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$IncomePerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$IncomePerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IncomeQuery whereType({
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
    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$IncomeFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$IncomePerFieldToJson.type(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$IncomePerFieldToJson.type(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$IncomePerFieldToJson.type(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$IncomePerFieldToJson.type(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$IncomePerFieldToJson.type(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$IncomePerFieldToJson.type(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$IncomePerFieldToJson.type(e)),
        whereNotIn: whereNotIn?.map((e) => _$IncomePerFieldToJson.type(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IncomeQuery whereCast({
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
    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$IncomeFieldMap['cast']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$IncomePerFieldToJson.cast(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$IncomePerFieldToJson.cast(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$IncomePerFieldToJson.cast(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$IncomePerFieldToJson.cast(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$IncomePerFieldToJson.cast(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$IncomePerFieldToJson.cast(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$IncomePerFieldToJson.cast(e)),
        whereNotIn: whereNotIn?.map((e) => _$IncomePerFieldToJson.cast(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IncomeQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
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

    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IncomeQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
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

    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IncomeQuery orderByDay({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$IncomeFieldMap['day']!,
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

    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IncomeQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$IncomeFieldMap['description']!, descending: descending);
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

    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IncomeQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$IncomeFieldMap['type']!,
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

    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IncomeQuery orderByCast({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IncomeDocumentSnapshot? startAtDocument,
    IncomeDocumentSnapshot? endAtDocument,
    IncomeDocumentSnapshot? endBeforeDocument,
    IncomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$IncomeFieldMap['cast']!,
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

    return _$IncomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$IncomeQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class IncomeDocumentSnapshot extends FirestoreDocumentSnapshot<Income> {
  IncomeDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Income> snapshot;

  @override
  IncomeDocumentReference get reference {
    return IncomeDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Income? data;
}

class IncomeQuerySnapshot
    extends FirestoreQuerySnapshot<Income, IncomeQueryDocumentSnapshot> {
  IncomeQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory IncomeQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Income> snapshot,
  ) {
    final docs = snapshot.docs.map(IncomeQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        IncomeDocumentSnapshot._,
      );
    }).toList();

    return IncomeQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<IncomeDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    IncomeDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<IncomeDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Income> snapshot;

  @override
  final List<IncomeQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<IncomeDocumentSnapshot>> docChanges;
}

class IncomeQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Income>
    implements IncomeDocumentSnapshot {
  IncomeQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Income> snapshot;

  @override
  final Income data;

  @override
  IncomeDocumentReference get reference {
    return IncomeDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AnswerCollectionReference
    implements
        AnswerQuery,
        FirestoreCollectionReference<Answer, AnswerQuerySnapshot> {
  factory AnswerCollectionReference(
    DocumentReference<User> parent,
  ) = _$AnswerCollectionReference;

  static Answer fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Answer.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Answer value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Answer> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  AnswerDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AnswerDocumentReference> add(Answer value);
}

class _$AnswerCollectionReference extends _$AnswerQuery
    implements AnswerCollectionReference {
  factory _$AnswerCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$AnswerCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('answers').withConverter(
            fromFirestore: AnswerCollectionReference.fromFirestore,
            toFirestore: AnswerCollectionReference.toFirestore,
          ),
    );
  }

  _$AnswerCollectionReference._(
    this.parent,
    CollectionReference<Answer> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Answer> get reference =>
      super.reference as CollectionReference<Answer>;

  @override
  AnswerDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AnswerDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AnswerDocumentReference> add(Answer value) {
    return reference.add(value).then((ref) => AnswerDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AnswerCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AnswerDocumentReference
    extends FirestoreDocumentReference<Answer, AnswerDocumentSnapshot> {
  factory AnswerDocumentReference(DocumentReference<Answer> reference) =
      _$AnswerDocumentReference;

  DocumentReference<Answer> get reference;

  /// A reference to the [AnswerCollectionReference] containing this document.
  AnswerCollectionReference get parent {
    return _$AnswerCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AnswerDocumentSnapshot> snapshots();

  @override
  Future<AnswerDocumentSnapshot> get([GetOptions? options]);

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
    Answer model, {
    SetOptions? options,
    FieldValue questionIdFieldValue,
    FieldValue alternativeIdFieldValue,
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
    Answer model, {
    SetOptions? options,
    FieldValue questionIdFieldValue,
    FieldValue alternativeIdFieldValue,
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
    Answer model, {
    SetOptions? options,
    FieldValue questionIdFieldValue,
    FieldValue alternativeIdFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int questionId,
    FieldValue questionIdFieldValue,
    int alternativeId,
    FieldValue alternativeIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int questionId,
    FieldValue questionIdFieldValue,
    int alternativeId,
    FieldValue alternativeIdFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int questionId,
    FieldValue questionIdFieldValue,
    int alternativeId,
    FieldValue alternativeIdFieldValue,
  });
}

class _$AnswerDocumentReference
    extends FirestoreDocumentReference<Answer, AnswerDocumentSnapshot>
    implements AnswerDocumentReference {
  _$AnswerDocumentReference(this.reference);

  @override
  final DocumentReference<Answer> reference;

  /// A reference to the [AnswerCollectionReference] containing this document.
  AnswerCollectionReference get parent {
    return _$AnswerCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AnswerDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AnswerDocumentSnapshot._);
  }

  @override
  Future<AnswerDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AnswerDocumentSnapshot._);
  }

  @override
  Future<AnswerDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AnswerDocumentSnapshot._);
  }

  Future<void> set(
    Answer model, {
    SetOptions? options,
    FieldValue? questionIdFieldValue,
    FieldValue? alternativeIdFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (questionIdFieldValue != null)
        _$AnswerFieldMap['questionId']!: questionIdFieldValue,
      if (alternativeIdFieldValue != null)
        _$AnswerFieldMap['alternativeId']!: alternativeIdFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Answer model, {
    SetOptions? options,
    FieldValue? questionIdFieldValue,
    FieldValue? alternativeIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (questionIdFieldValue != null)
        _$AnswerFieldMap['questionId']!: questionIdFieldValue,
      if (alternativeIdFieldValue != null)
        _$AnswerFieldMap['alternativeId']!: alternativeIdFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Answer model, {
    SetOptions? options,
    FieldValue? questionIdFieldValue,
    FieldValue? alternativeIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (questionIdFieldValue != null)
        _$AnswerFieldMap['questionId']!: questionIdFieldValue,
      if (alternativeIdFieldValue != null)
        _$AnswerFieldMap['alternativeId']!: alternativeIdFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? questionId = _sentinel,
    FieldValue? questionIdFieldValue,
    Object? alternativeId = _sentinel,
    FieldValue? alternativeIdFieldValue,
  }) async {
    assert(
      questionId == _sentinel || questionIdFieldValue == null,
      "Cannot specify both questionId and questionIdFieldValue",
    );
    assert(
      alternativeId == _sentinel || alternativeIdFieldValue == null,
      "Cannot specify both alternativeId and alternativeIdFieldValue",
    );
    final json = {
      if (questionId != _sentinel)
        _$AnswerFieldMap['questionId']!:
            _$AnswerPerFieldToJson.questionId(questionId as int),
      if (questionIdFieldValue != null)
        _$AnswerFieldMap['questionId']!: questionIdFieldValue,
      if (alternativeId != _sentinel)
        _$AnswerFieldMap['alternativeId']!:
            _$AnswerPerFieldToJson.alternativeId(alternativeId as int),
      if (alternativeIdFieldValue != null)
        _$AnswerFieldMap['alternativeId']!: alternativeIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? questionId = _sentinel,
    FieldValue? questionIdFieldValue,
    Object? alternativeId = _sentinel,
    FieldValue? alternativeIdFieldValue,
  }) {
    assert(
      questionId == _sentinel || questionIdFieldValue == null,
      "Cannot specify both questionId and questionIdFieldValue",
    );
    assert(
      alternativeId == _sentinel || alternativeIdFieldValue == null,
      "Cannot specify both alternativeId and alternativeIdFieldValue",
    );
    final json = {
      if (questionId != _sentinel)
        _$AnswerFieldMap['questionId']!:
            _$AnswerPerFieldToJson.questionId(questionId as int),
      if (questionIdFieldValue != null)
        _$AnswerFieldMap['questionId']!: questionIdFieldValue,
      if (alternativeId != _sentinel)
        _$AnswerFieldMap['alternativeId']!:
            _$AnswerPerFieldToJson.alternativeId(alternativeId as int),
      if (alternativeIdFieldValue != null)
        _$AnswerFieldMap['alternativeId']!: alternativeIdFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? questionId = _sentinel,
    FieldValue? questionIdFieldValue,
    Object? alternativeId = _sentinel,
    FieldValue? alternativeIdFieldValue,
  }) {
    assert(
      questionId == _sentinel || questionIdFieldValue == null,
      "Cannot specify both questionId and questionIdFieldValue",
    );
    assert(
      alternativeId == _sentinel || alternativeIdFieldValue == null,
      "Cannot specify both alternativeId and alternativeIdFieldValue",
    );
    final json = {
      if (questionId != _sentinel)
        _$AnswerFieldMap['questionId']!:
            _$AnswerPerFieldToJson.questionId(questionId as int),
      if (questionIdFieldValue != null)
        _$AnswerFieldMap['questionId']!: questionIdFieldValue,
      if (alternativeId != _sentinel)
        _$AnswerFieldMap['alternativeId']!:
            _$AnswerPerFieldToJson.alternativeId(alternativeId as int),
      if (alternativeIdFieldValue != null)
        _$AnswerFieldMap['alternativeId']!: alternativeIdFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AnswerDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AnswerQuery
    implements QueryReference<Answer, AnswerQuerySnapshot> {
  @override
  AnswerQuery limit(int limit);

  @override
  AnswerQuery limitToLast(int limit);

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
  AnswerQuery whereFieldPath(
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

  AnswerQuery whereDocumentId({
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

  AnswerQuery whereQuestionId({
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

  AnswerQuery whereAlternativeId({
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
  AnswerQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
  });

  AnswerQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
  });

  AnswerQuery orderByQuestionId({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
  });

  AnswerQuery orderByAlternativeId({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
  });
}

class _$AnswerQuery extends QueryReference<Answer, AnswerQuerySnapshot>
    implements AnswerQuery {
  _$AnswerQuery(
    this._collection, {
    required Query<Answer> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AnswerQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(AnswerQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AnswerQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AnswerQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AnswerQuery limit(int limit) {
    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AnswerQuery limitToLast(int limit) {
    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AnswerQuery whereFieldPath(
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
    return _$AnswerQuery(
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
  AnswerQuery whereDocumentId({
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
    return _$AnswerQuery(
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
  AnswerQuery whereQuestionId({
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
    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AnswerFieldMap['questionId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AnswerPerFieldToJson.questionId(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AnswerPerFieldToJson.questionId(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AnswerPerFieldToJson.questionId(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AnswerPerFieldToJson.questionId(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AnswerPerFieldToJson.questionId(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AnswerPerFieldToJson.questionId(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$AnswerPerFieldToJson.questionId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AnswerPerFieldToJson.questionId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AnswerQuery whereAlternativeId({
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
    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AnswerFieldMap['alternativeId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AnswerPerFieldToJson.alternativeId(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AnswerPerFieldToJson.alternativeId(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AnswerPerFieldToJson.alternativeId(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AnswerPerFieldToJson.alternativeId(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AnswerPerFieldToJson.alternativeId(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AnswerPerFieldToJson
                .alternativeId(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$AnswerPerFieldToJson.alternativeId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AnswerPerFieldToJson.alternativeId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AnswerQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
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

    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AnswerQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
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

    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AnswerQuery orderByQuestionId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AnswerFieldMap['questionId']!, descending: descending);
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

    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AnswerQuery orderByAlternativeId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AnswerDocumentSnapshot? startAtDocument,
    AnswerDocumentSnapshot? endAtDocument,
    AnswerDocumentSnapshot? endBeforeDocument,
    AnswerDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AnswerFieldMap['alternativeId']!, descending: descending);
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

    return _$AnswerQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AnswerQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AnswerDocumentSnapshot extends FirestoreDocumentSnapshot<Answer> {
  AnswerDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Answer> snapshot;

  @override
  AnswerDocumentReference get reference {
    return AnswerDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Answer? data;
}

class AnswerQuerySnapshot
    extends FirestoreQuerySnapshot<Answer, AnswerQueryDocumentSnapshot> {
  AnswerQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AnswerQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Answer> snapshot,
  ) {
    final docs = snapshot.docs.map(AnswerQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AnswerDocumentSnapshot._,
      );
    }).toList();

    return AnswerQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AnswerDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AnswerDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AnswerDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Answer> snapshot;

  @override
  final List<AnswerQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AnswerDocumentSnapshot>> docChanges;
}

class AnswerQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Answer>
    implements AnswerDocumentSnapshot {
  AnswerQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Answer> snapshot;

  @override
  final Answer data;

  @override
  AnswerDocumentReference get reference {
    return AnswerDocumentReference(snapshot.reference);
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
      month: (json['month'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      inProgress: json['inProgress'] as bool,
      startBalance: (json['startBalance'] as num?)?.toDouble(),
      endBalance: (json['endBalance'] as num?)?.toDouble(),
    );

const _$AssessmentFieldMap = <String, String>{
  'month': 'month',
  'year': 'year',
  'inProgress': 'inProgress',
  'startBalance': 'startBalance',
  'endBalance': 'endBalance',
};

// ignore: unused_element
abstract class _$AssessmentPerFieldToJson {
  // ignore: unused_element
  static Object? month(int instance) => instance;
  // ignore: unused_element
  static Object? year(int instance) => instance;
  // ignore: unused_element
  static Object? inProgress(bool instance) => instance;
  // ignore: unused_element
  static Object? startBalance(double? instance) => instance;
  // ignore: unused_element
  static Object? endBalance(double? instance) => instance;
}

Map<String, dynamic> _$AssessmentToJson(Assessment instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'inProgress': instance.inProgress,
      'startBalance': instance.startBalance,
      'endBalance': instance.endBalance,
    };

Income _$IncomeFromJson(Map<String, dynamic> json) => Income(
      day: (json['day'] as num).toInt(),
      description: json['description'] as String,
      type: json['type'] as String,
      cast: (json['cast'] as num).toDouble(),
    );

const _$IncomeFieldMap = <String, String>{
  'day': 'day',
  'description': 'description',
  'type': 'type',
  'cast': 'cast',
};

// ignore: unused_element
abstract class _$IncomePerFieldToJson {
  // ignore: unused_element
  static Object? day(int instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? type(String instance) => instance;
  // ignore: unused_element
  static Object? cast(double instance) => instance;
}

Map<String, dynamic> _$IncomeToJson(Income instance) => <String, dynamic>{
      'day': instance.day,
      'description': instance.description,
      'type': instance.type,
      'cast': instance.cast,
    };

Answer _$AnswerFromJson(Map<String, dynamic> json) => Answer(
      questionId: (json['questionId'] as num).toInt(),
      alternativeId: (json['alternativeId'] as num).toInt(),
    );

const _$AnswerFieldMap = <String, String>{
  'questionId': 'questionId',
  'alternativeId': 'alternativeId',
};

// ignore: unused_element
abstract class _$AnswerPerFieldToJson {
  // ignore: unused_element
  static Object? questionId(int instance) => instance;
  // ignore: unused_element
  static Object? alternativeId(int instance) => instance;
}

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      'questionId': instance.questionId,
      'alternativeId': instance.alternativeId,
    };
