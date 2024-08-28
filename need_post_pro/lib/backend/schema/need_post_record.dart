import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NeedPostRecord extends FirestoreRecord {
  NeedPostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _item = snapshotData['Item'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _price = snapshotData['price'] as String?;
    _status = snapshotData['status'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NeedPost');

  static Stream<NeedPostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NeedPostRecord.fromSnapshot(s));

  static Future<NeedPostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NeedPostRecord.fromSnapshot(s));

  static NeedPostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NeedPostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NeedPostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NeedPostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NeedPostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NeedPostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNeedPostRecordData({
  String? item,
  String? description,
  String? location,
  String? price,
  String? status,
  String? imageUrl,
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Item': item,
      'description': description,
      'location': location,
      'price': price,
      'status': status,
      'image_url': imageUrl,
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class NeedPostRecordDocumentEquality implements Equality<NeedPostRecord> {
  const NeedPostRecordDocumentEquality();

  @override
  bool equals(NeedPostRecord? e1, NeedPostRecord? e2) {
    return e1?.item == e2?.item &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.price == e2?.price &&
        e1?.status == e2?.status &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(NeedPostRecord? e) => const ListEquality().hash([
        e?.item,
        e?.description,
        e?.location,
        e?.price,
        e?.status,
        e?.imageUrl,
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is NeedPostRecord;
}
