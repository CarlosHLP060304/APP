import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizCollectionRecord extends FirestoreRecord {
  QuizCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "questionNum" field.
  int? _questionNum;
  int get questionNum => _questionNum ?? 0;
  bool hasQuestionNum() => _questionNum != null;

  // "answerOption" field.
  List<String>? _answerOption;
  List<String> get answerOption => _answerOption ?? const [];
  bool hasAnswerOption() => _answerOption != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

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

  void _initializeFields() {
    _correctAnswer = snapshotData['correctAnswer'] as String?;
    _questionNum = castToType<int>(snapshotData['questionNum']);
    _answerOption = getDataList(snapshotData['answerOption']);
    _question = snapshotData['question'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizCollection');

  static Stream<QuizCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizCollectionRecord.fromSnapshot(s));

  static Future<QuizCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizCollectionRecord.fromSnapshot(s));

  static QuizCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizCollectionRecordData({
  String? correctAnswer,
  int? questionNum,
  String? question,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correctAnswer': correctAnswer,
      'questionNum': questionNum,
      'question': question,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizCollectionRecordDocumentEquality
    implements Equality<QuizCollectionRecord> {
  const QuizCollectionRecordDocumentEquality();

  @override
  bool equals(QuizCollectionRecord? e1, QuizCollectionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.correctAnswer == e2?.correctAnswer &&
        e1?.questionNum == e2?.questionNum &&
        listEquality.equals(e1?.answerOption, e2?.answerOption) &&
        e1?.question == e2?.question &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(QuizCollectionRecord? e) => const ListEquality().hash([
        e?.correctAnswer,
        e?.questionNum,
        e?.answerOption,
        e?.question,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is QuizCollectionRecord;
}
