part of '../blocs.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(_profileDataLoaded) {
    _textControllerUsername.addListener(() {
      _currentUser?.username = _textControllerUsername.text.trim();
    });

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

    on<ChangeProfilePhotoPressed>((event, emit) async {
      ChangeImageResult result = await ImageContainer.handleChangeImage(
        showDelete: true,
        sheetTitleText: 'Ganti foto profil',
      );

      if (result.isDelete) {
        _currentUser?.userDetail?.fotoProfileData = null;
        _isPhotoDiff = currentUser?.userDetail?.fotoProfileData != null && _currentUser?.userDetail?.fotoProfileData == null;
        emit(_profileDataLoaded);
        return;
      }

      if (result.image == null) return;

      _currentUser?.userDetail?.fotoProfileData = await result.image!.readAsBytes();
      _isPhotoDiff = true;
      emit(_profileDataLoaded);
    });

    on<SetCurrentEditingProfile>((event, emit) {
      _currentUser = event.value.copyWith();
      emit(_profileDataLoaded);
    });

    on<SaveEditingProfilePressed>((event, emit) async {
      _invalidTypes.clear();
      if (_textControllerName.text.trim().isEmpty) _invalidTypes.add(InvalidType.nameIsStillEmpty);
      if (_textControllerPhoneNumber.text.trim().isEmpty) {
        _invalidTypes.add(InvalidType.phoneNumberIsStillEmpty);
      } else if (_textControllerPhoneNumber.text.trim().length < 10) {
        _invalidTypes.add(InvalidType.phoneNumberIsNotValid);
      }

      switch (_currentUser?.role) {
        case UserRole.remaja:
          if (_textControllerSchool.text.trim().isEmpty) _invalidTypes.add(InvalidType.schoolIsStillEmpty);
        case UserRole.tenagaAhli:
          if (_textControllerDescription.text.trim().isEmpty) _invalidTypes.add(InvalidType.descriptionIsStillEmpty);
        case UserRole.kaderKesehatan:
          if (_textControllerAge.text.trim().isEmpty) _invalidTypes.add(InvalidType.ageIsStillEmpty);

          if (_textControllerBuiltArea.text.trim().isEmpty) _invalidTypes.add(InvalidType.builtAreaIsStillEmpty);
        default:
        // Do nothing
      }

      if (_invalidTypes.isEmpty) _invalidTypes.add(InvalidType.none);

      if (_invalidTypes.first != InvalidType.none) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(SnackBar(content: Text(_invalidTypes.first.text)));
        emit(_profileDataLoaded);
        return;
      }

      try {
        FocusManager.instance.primaryFocus?.unfocus();

        showLoadingDialog();

        switch (_currentUser?.role) {
          case UserRole.remaja:
            await ApiHelper.putMultipart(
              '/api/update-remaja',
              data: FormData.fromMap({
                'username': _currentUser!.username!,
                'email': _currentUser!.email!,
                'nama': _textControllerName.text.trim(),
                'no_hp': _textControllerPhoneNumber.text.trim(),
                'tgl_lahir': _currentUser!.userDetail!.mapOrNull(remaja: (value) => '${value.tglLahir?.year}-${value.tglLahir?.month}-${value.tglLahir?.day}')!,
                'jenis_kelamin': _currentUser!.userDetail!.mapOrNull(remaja: (value) => value.jenisKelamin!.serverValue)!,
                'sekolah': _textControllerSchool.text.trim(),
                if (_isPhotoDiff && _currentUser?.userDetail?.fotoProfileData != null) 'foto_profile': MultipartFile.fromBytes(_currentUser!.userDetail!.fotoProfileData!, filename: '🤪.png'),
              }),
            );
          case UserRole.orangTua:
          // TODO: Handle this case.
          case UserRole.tenagaAhli:
          // TODO: Handle this case.
          case UserRole.kaderKesehatan:
          // TODO: Handle this case.
          case UserRole.guru:
          // TODO: Handle this case.
          case UserRole.superAdmin:
          // TODO: Handle this case.
          case null:
          // TODO: Handle this case.
        }
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil diupdate')));

      currentUser = _currentUser?.copyWith(userDetail: _currentUser?.userDetail?.copyWith(fotoProfileData: _currentUser?.userDetail?.fotoProfileData != null ? List.from(_currentUser!.userDetail!.fotoProfileData!) : null));
      _isPhotoDiff = false;
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

  static bool _isPhotoDiff = false;

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
