import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentRecord extends FirestoreRecord {
  CommentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "commentobject" field.
  List<CommentStruct>? _commentobject;
  List<CommentStruct> get commentobject => _commentobject ?? const [];
  bool hasCommentobject() => _commentobject != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentobject = getStructList(
      snapshotData['commentobject'],
      CommentStruct.fromMap,
    );
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comment')
          : FirebaseFirestore.instance.collectionGroup('comment');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('comment').doc(id);

  static Stream<CommentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentRecord.fromSnapshot(s));

  static Future<CommentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentRecord.fromSnapshot(s));

  static CommentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CommentRecordDocumentEquality implements Equality<CommentRecord> {
  const CommentRecordDocumentEquality();

  @override
  bool equals(CommentRecord? e1, CommentRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.commentobject, e2?.commentobject);
  }

  @override
  int hash(CommentRecord? e) => const ListEquality().hash([e?.commentobject]);

  @override
  bool isValidKey(Object? o) => o is CommentRecord;
}
