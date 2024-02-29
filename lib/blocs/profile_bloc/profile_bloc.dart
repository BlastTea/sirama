part of '../blocs.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(_profileDataLoaded) {
    on<SetProfileState>((event, emit) => emit(event.state ?? _profileDataLoaded));

    on<InitializeProfileData>((event, emit) {
      _currentUser = currentUser?.copyWith(userDetail: currentUser?.userDetail?.copyWith(fotoProfileData: currentUser?.userDetail?.fotoProfileData != null ? List.from(currentUser!.userDetail!.fotoProfileData!) : null));

      _textControllerUsername.text = _currentUser?.username ?? '';
      _textControllerEmail.text = _currentUser?.email ?? '';
      _textControllerName.text = _currentUser?.userDetail?.nama ?? '';
      _textControllerPhoneNumber.text = _currentUser?.userDetail?.noHp ?? '';
      _textControllerSchool.text = _currentUser?.userDetail?.mapOrNull(remaja: (value) => value.sekolah, guru: (value) => value.sekolah) ?? '';
      _textControllerDescription.text = _currentUser?.userDetail?.mapOrNull(tenagaAhli: (value) => value.deskripsiAhli) ?? '';
      _textControllerAge.text = _currentUser?.userDetail?.mapOrNull(kaderKesehatan: (value) => value.usia)?.toString() ?? '';
      _textControllerBuiltArea.text = _currentUser?.userDetail?.mapOrNull(kaderKesehatan: (value) => value.wilayahBinaan) ?? '';
      emit(_profileDataLoaded);
    });

    on<SetCurrentEditingProfile>((event, emit) {
      _currentUser = event.value.copyWith();
      emit(_profileDataLoaded);
    });
  }

  static final _textControllerUsername = TextEditingController();
  static final _textControllerEmail = TextEditingController();
  static final _textControllerName = TextEditingController();
  static final _textControllerPhoneNumber = TextEditingController();
  static final _textControllerSchool = TextEditingController();
  static final _textControllerDescription = TextEditingController();
  static final _textControllerAge = TextEditingController();
  static final _textControllerBuiltArea = TextEditingController();

  static User? _currentUser;

  static final List<InvalidType> _invalidTypes = [InvalidType.none];

  static ProfileDataLoaded get _profileDataLoaded => ProfileDataLoaded(
        textControllerUsername: _textControllerUsername,
        textControllerName: _textControllerName,
        textControllerEmail: _textControllerEmail,
        textControllerPhoneNumber: _textControllerPhoneNumber,
        textControllerSchool: _textControllerSchool,
        textControllerDescription: _textControllerDescription,
        textControllerAge: _textControllerAge,
        textControllerBuiltArea: _textControllerBuiltArea,
        currentUser: _currentUser,
        invalidTypes: _invalidTypes,
      );
}
