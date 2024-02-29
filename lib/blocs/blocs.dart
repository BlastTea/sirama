import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:sirama/models/models.dart';
import 'package:sirama/services/services.dart';
import 'package:sirama/utils/utils.dart';
import 'package:sirama/views/pages/pages.dart';

part 'homepage_bloc/homepage_bloc.dart';
part 'homepage_bloc/homepage_event.dart';
part 'homepage_bloc/homepage_state.dart';

part 'chatme_bloc/chat_me_bloc.dart';
part 'chatme_bloc/chat_me_event.dart';
part 'chatme_bloc/chat_me_state.dart';

part 'authentication_bloc/authentication_bloc.dart';
part 'authentication_bloc/authentication_event.dart';
part 'authentication_bloc/authentication_state.dart';

part 'ask_the_expert_bloc/ask_the_expert_bloc.dart';
part 'ask_the_expert_bloc/ask_the_expert_event.dart';
part 'ask_the_expert_bloc/ask_the_expert_state.dart';

part 'quote_bloc/quote_bloc.dart';
part 'quote_bloc/quote_event.dart';
part 'quote_bloc/quote_state.dart';

part 'skrinning_bloc/skrinning_bloc.dart';
part 'skrinning_bloc/skrinning_event.dart';
part 'skrinning_bloc/skrinning_state.dart';

part 'content_favorite_bloc/content_favorite_bloc.dart';
part 'content_favorite_bloc/content_favorite_event.dart';
part 'content_favorite_bloc/content_favorite_state.dart';

part 'profile_bloc/profile_bloc.dart';
part 'profile_bloc/profile_event.dart';
part 'profile_bloc/profile_state.dart';
