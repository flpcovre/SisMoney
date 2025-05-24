// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

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
abstract class QuestionCollectionReference
    implements
        QuestionQuery,
        FirestoreCollectionReference<Question, QuestionQuerySnapshot> {
  factory QuestionCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$QuestionCollectionReference;

  static Question fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Question.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Question value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Question> get reference;

  @override
  QuestionDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<QuestionDocumentReference> add(Question value);
}

class _$QuestionCollectionReference extends _$QuestionQuery
    implements QuestionCollectionReference {
  factory _$QuestionCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$QuestionCollectionReference._(
      firestore.collection('questions').withConverter(
            fromFirestore: QuestionCollectionReference.fromFirestore,
            toFirestore: QuestionCollectionReference.toFirestore,
          ),
    );
  }

  _$QuestionCollectionReference._(
    CollectionReference<Question> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Question> get reference =>
      super.reference as CollectionReference<Question>;

  @override
  QuestionDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return QuestionDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<QuestionDocumentReference> add(Question value) {
    return reference.add(value).then((ref) => QuestionDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$QuestionCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class QuestionDocumentReference
    extends FirestoreDocumentReference<Question, QuestionDocumentSnapshot> {
  factory QuestionDocumentReference(DocumentReference<Question> reference) =
      _$QuestionDocumentReference;

  DocumentReference<Question> get reference;

  /// A reference to the [QuestionCollectionReference] containing this document.
  QuestionCollectionReference get parent {
    return _$QuestionCollectionReference(reference.firestore);
  }

  @override
  Stream<QuestionDocumentSnapshot> snapshots();

  @override
  Future<QuestionDocumentSnapshot> get([GetOptions? options]);

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
    Question model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue alternativesFieldValue,
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
    Question model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue alternativesFieldValue,
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
    Question model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue alternativesFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int id,
    FieldValue idFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    List<Map<String, dynamic>> alternatives,
    FieldValue alternativesFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int id,
    FieldValue idFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    List<Map<String, dynamic>> alternatives,
    FieldValue alternativesFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int id,
    FieldValue idFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    List<Map<String, dynamic>> alternatives,
    FieldValue alternativesFieldValue,
  });
}

class _$QuestionDocumentReference
    extends FirestoreDocumentReference<Question, QuestionDocumentSnapshot>
    implements QuestionDocumentReference {
  _$QuestionDocumentReference(this.reference);

  @override
  final DocumentReference<Question> reference;

  /// A reference to the [QuestionCollectionReference] containing this document.
  QuestionCollectionReference get parent {
    return _$QuestionCollectionReference(reference.firestore);
  }

  @override
  Stream<QuestionDocumentSnapshot> snapshots() {
    return reference.snapshots().map(QuestionDocumentSnapshot._);
  }

  @override
  Future<QuestionDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(QuestionDocumentSnapshot._);
  }

  @override
  Future<QuestionDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(QuestionDocumentSnapshot._);
  }

  Future<void> set(
    Question model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? alternativesFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$QuestionFieldMap['id']!: idFieldValue,
      if (descriptionFieldValue != null)
        _$QuestionFieldMap['description']!: descriptionFieldValue,
      if (alternativesFieldValue != null)
        _$QuestionFieldMap['alternatives']!: alternativesFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Question model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? alternativesFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$QuestionFieldMap['id']!: idFieldValue,
      if (descriptionFieldValue != null)
        _$QuestionFieldMap['description']!: descriptionFieldValue,
      if (alternativesFieldValue != null)
        _$QuestionFieldMap['alternatives']!: alternativesFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Question model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? alternativesFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$QuestionFieldMap['id']!: idFieldValue,
      if (descriptionFieldValue != null)
        _$QuestionFieldMap['description']!: descriptionFieldValue,
      if (alternativesFieldValue != null)
        _$QuestionFieldMap['alternatives']!: alternativesFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? alternatives = _sentinel,
    FieldValue? alternativesFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      alternatives == _sentinel || alternativesFieldValue == null,
      "Cannot specify both alternatives and alternativesFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$QuestionFieldMap['id']!: _$QuestionPerFieldToJson.id(id as int),
      if (idFieldValue != null) _$QuestionFieldMap['id']!: idFieldValue,
      if (description != _sentinel)
        _$QuestionFieldMap['description']!:
            _$QuestionPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$QuestionFieldMap['description']!: descriptionFieldValue,
      if (alternatives != _sentinel)
        _$QuestionFieldMap['alternatives']!: _$QuestionPerFieldToJson
            .alternatives(alternatives as List<Map<String, dynamic>>),
      if (alternativesFieldValue != null)
        _$QuestionFieldMap['alternatives']!: alternativesFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? alternatives = _sentinel,
    FieldValue? alternativesFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      alternatives == _sentinel || alternativesFieldValue == null,
      "Cannot specify both alternatives and alternativesFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$QuestionFieldMap['id']!: _$QuestionPerFieldToJson.id(id as int),
      if (idFieldValue != null) _$QuestionFieldMap['id']!: idFieldValue,
      if (description != _sentinel)
        _$QuestionFieldMap['description']!:
            _$QuestionPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$QuestionFieldMap['description']!: descriptionFieldValue,
      if (alternatives != _sentinel)
        _$QuestionFieldMap['alternatives']!: _$QuestionPerFieldToJson
            .alternatives(alternatives as List<Map<String, dynamic>>),
      if (alternativesFieldValue != null)
        _$QuestionFieldMap['alternatives']!: alternativesFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? alternatives = _sentinel,
    FieldValue? alternativesFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      alternatives == _sentinel || alternativesFieldValue == null,
      "Cannot specify both alternatives and alternativesFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$QuestionFieldMap['id']!: _$QuestionPerFieldToJson.id(id as int),
      if (idFieldValue != null) _$QuestionFieldMap['id']!: idFieldValue,
      if (description != _sentinel)
        _$QuestionFieldMap['description']!:
            _$QuestionPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$QuestionFieldMap['description']!: descriptionFieldValue,
      if (alternatives != _sentinel)
        _$QuestionFieldMap['alternatives']!: _$QuestionPerFieldToJson
            .alternatives(alternatives as List<Map<String, dynamic>>),
      if (alternativesFieldValue != null)
        _$QuestionFieldMap['alternatives']!: alternativesFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestionDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class QuestionQuery
    implements QueryReference<Question, QuestionQuerySnapshot> {
  @override
  QuestionQuery limit(int limit);

  @override
  QuestionQuery limitToLast(int limit);

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
  QuestionQuery whereFieldPath(
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

  QuestionQuery whereDocumentId({
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

  QuestionQuery whereId({
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

  QuestionQuery whereDescription({
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

  QuestionQuery whereAlternatives({
    List<Map<String, dynamic>>? isEqualTo,
    List<Map<String, dynamic>>? isNotEqualTo,
    List<Map<String, dynamic>>? isLessThan,
    List<Map<String, dynamic>>? isLessThanOrEqualTo,
    List<Map<String, dynamic>>? isGreaterThan,
    List<Map<String, dynamic>>? isGreaterThanOrEqualTo,
    Map<String, dynamic>? arrayContains,
    List<Map<String, dynamic>>? arrayContainsAny,
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
  QuestionQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  });

  QuestionQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  });

  QuestionQuery orderById({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  });

  QuestionQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  });

  QuestionQuery orderByAlternatives({
    bool descending = false,
    List<Map<String, dynamic>> startAt,
    List<Map<String, dynamic>> startAfter,
    List<Map<String, dynamic>> endAt,
    List<Map<String, dynamic>> endBefore,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  });
}

class _$QuestionQuery extends QueryReference<Question, QuestionQuerySnapshot>
    implements QuestionQuery {
  _$QuestionQuery(
    this._collection, {
    required Query<Question> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<QuestionQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(QuestionQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<QuestionQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(QuestionQuerySnapshot._fromQuerySnapshot);
  }

  @override
  QuestionQuery limit(int limit) {
    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  QuestionQuery limitToLast(int limit) {
    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  QuestionQuery whereFieldPath(
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
    return _$QuestionQuery(
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
  QuestionQuery whereDocumentId({
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
    return _$QuestionQuery(
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
  QuestionQuery whereId({
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
    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$QuestionFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$QuestionPerFieldToJson.id(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$QuestionPerFieldToJson.id(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$QuestionPerFieldToJson.id(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$QuestionPerFieldToJson.id(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$QuestionPerFieldToJson.id(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$QuestionPerFieldToJson.id(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$QuestionPerFieldToJson.id(e)),
        whereNotIn: whereNotIn?.map((e) => _$QuestionPerFieldToJson.id(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  QuestionQuery whereDescription({
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
    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$QuestionFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$QuestionPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$QuestionPerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$QuestionPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$QuestionPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$QuestionPerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$QuestionPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$QuestionPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$QuestionPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  QuestionQuery whereAlternatives({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Map<String, dynamic>>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$QuestionFieldMap['alternatives']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$QuestionPerFieldToJson
                .alternatives(isEqualTo as List<Map<String, dynamic>>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$QuestionPerFieldToJson
                .alternatives(isNotEqualTo as List<Map<String, dynamic>>)
            : null,
        isLessThan: isLessThan != null
            ? _$QuestionPerFieldToJson
                .alternatives(isLessThan as List<Map<String, dynamic>>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$QuestionPerFieldToJson
                .alternatives(isLessThanOrEqualTo as List<Map<String, dynamic>>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$QuestionPerFieldToJson
                .alternatives(isGreaterThan as List<Map<String, dynamic>>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$QuestionPerFieldToJson.alternatives(
                isGreaterThanOrEqualTo as List<Map<String, dynamic>>)
            : null,
        arrayContains: arrayContains != null
            ? (_$QuestionPerFieldToJson
                        .alternatives([arrayContains as Map<String, dynamic>])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$QuestionPerFieldToJson.alternatives(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  QuestionQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
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

    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  QuestionQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
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

    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  QuestionQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$QuestionFieldMap['id']!,
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

    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  QuestionQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$QuestionFieldMap['description']!, descending: descending);
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

    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  QuestionQuery orderByAlternatives({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    QuestionDocumentSnapshot? startAtDocument,
    QuestionDocumentSnapshot? endAtDocument,
    QuestionDocumentSnapshot? endBeforeDocument,
    QuestionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$QuestionFieldMap['alternatives']!, descending: descending);
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

    return _$QuestionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$QuestionQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class QuestionDocumentSnapshot extends FirestoreDocumentSnapshot<Question> {
  QuestionDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Question> snapshot;

  @override
  QuestionDocumentReference get reference {
    return QuestionDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Question? data;
}

class QuestionQuerySnapshot
    extends FirestoreQuerySnapshot<Question, QuestionQueryDocumentSnapshot> {
  QuestionQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory QuestionQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Question> snapshot,
  ) {
    final docs = snapshot.docs.map(QuestionQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        QuestionDocumentSnapshot._,
      );
    }).toList();

    return QuestionQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<QuestionDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    QuestionDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<QuestionDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Question> snapshot;

  @override
  final List<QuestionQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<QuestionDocumentSnapshot>> docChanges;
}

class QuestionQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Question>
    implements QuestionDocumentSnapshot {
  QuestionQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Question> snapshot;

  @override
  final Question data;

  @override
  QuestionDocumentReference get reference {
    return QuestionDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      alternatives: (json['alternatives'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

const _$QuestionFieldMap = <String, String>{
  'id': 'id',
  'description': 'description',
  'alternatives': 'alternatives',
};

// ignore: unused_element
abstract class _$QuestionPerFieldToJson {
  // ignore: unused_element
  static Object? id(int instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? alternatives(List<Map<String, dynamic>> instance) => instance;
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'alternatives': instance.alternatives,
    };
