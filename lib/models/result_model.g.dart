// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'result_model.dart';
//
// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************
//
// class ResultModelAdapter extends TypeAdapter<ResultModel> {
//   @override
//   final int typeId = 1;
//
//   @override
//   ResultModel read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return ResultModel(
//       wax: fields[0] as double,
//       fragrace: fields[1] as double,
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, ResultModel obj) {
//     writer
//       ..writeByte(2)
//       ..writeByte(0)
//       ..write(obj.wax)
//       ..writeByte(1)
//       ..write(obj.fragrace);
//   }
//
//   @override
//   int get hashCode => typeId.hashCode;
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is ResultModelAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
