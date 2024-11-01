import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning/l10n/generated/app_localizations.dart';
import 'package:flutter_learning/my_movies/core/enums/status_state.dart';
import 'package:flutter_learning/my_movies/features/auth/login/widgets/loading_overlay.dart';
import 'package:flutter_learning/my_movies/features/profile/data/remote_data_source/account_firestore_data_source.dart';
import 'package:flutter_learning/my_movies/features/profile/data/repositories/account_repository.dart';
import 'package:flutter_learning/my_movies/features/profile/presentation/avatar_and_username_section.dart';
import 'package:flutter_learning/my_movies/features/profile/presentation/logic_holders/bloc/account_info_bloc.dart';
import 'package:flutter_learning/my_movies/features/profile/presentation/settings_content.dart';
import 'package:flutter_learning/my_movies/features/profile/presentation/widgets/custom_title_and_content_section.dart';
import 'package:flutter_learning/my_movies/features/profile/presentation/widgets/information_content.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountInfoBloc>(
      create: (context) => AccountInfoBloc(AccountRepositoryImpl(
          remoteDatasource: AccountFirestoreDataSourceImpl()))
        ..add(FetchAccountInfo()),
      child: BlocBuilder<AccountInfoBloc, AccountInfoState>(
        builder: (context, state) {
          final isLoading = state.status == StatusState.loading;
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  backgroundColor: const Color(0xff1B2332),
                  title:  Text(
                    AppLocalizations.of(context)!.helloVTI,
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ))
                  ],
                ),
                body: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: const Color(0xff181F2B),
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [
                          AvatarAndUsernameSection(),
                          SizedBox(
                            height: 38,
                          ),
                          CustomTitleAndContentSection(
                              title: "Information",
                              content: InformationContent()),
                          SizedBox(
                            height: 32,
                          ),
                          CustomTitleAndContentSection(
                              title: "Settings", content: SettingsContent()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (isLoading) const LoadingOverylay()
            ],
          );
        },
      ),
    );
  }
}
