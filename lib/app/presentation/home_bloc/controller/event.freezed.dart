// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArticlesEventTearOff {
  const _$ArticlesEventTearOff();

// ignore: unused_element
  GetData getData() {
    return const GetData();
  }
}

/// @nodoc
// ignore: unused_element
const $ArticlesEvent = _$ArticlesEventTearOff();

/// @nodoc
mixin _$ArticlesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getData(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getData(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getData(GetData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getData(GetData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ArticlesEventCopyWith<$Res> {
  factory $ArticlesEventCopyWith(
          ArticlesEvent value, $Res Function(ArticlesEvent) then) =
      _$ArticlesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticlesEventCopyWithImpl<$Res>
    implements $ArticlesEventCopyWith<$Res> {
  _$ArticlesEventCopyWithImpl(this._value, this._then);

  final ArticlesEvent _value;
  // ignore: unused_field
  final $Res Function(ArticlesEvent) _then;
}

/// @nodoc
abstract class $GetDataCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetDataCopyWithImpl<$Res> extends _$ArticlesEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;
}

/// @nodoc
class _$GetData with DiagnosticableTreeMixin implements GetData {
  const _$GetData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticlesEvent.getData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ArticlesEvent.getData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getData(),
  }) {
    assert(getData != null);
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getData(GetData value),
  }) {
    assert(getData != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getData(GetData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements ArticlesEvent {
  const factory GetData() = _$GetData;
}
