import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_with_provider_template/ui/home_page/home_view_model.dart';
import 'package:app_with_provider_template/ui/misc/pages/base_page.dart';
import 'package:app_with_provider_template/data/settings_repository.dart';
import 'package:app_with_provider_template/service_locator.dart';

class HomePage extends StatelessPage<HomeViewModel> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (BuildContext context) => createViewModel(context)..onViewStarted(),
      child: Consumer<HomeViewModel>(
        builder: (BuildContext context, HomeViewModel viewModel, _) {
          return SafeArea(
            child: Stack(
              children: [
                _buildAppBar(viewModel),
                Container(
                  margin: const EdgeInsets.only(top: 160),
                  color: Theme.of(context).colorScheme.background,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 168),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAppBar(HomeViewModel viewModel) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Home',
            style: Theme.of(viewModel.context).textTheme.displayLarge,
          ),
          const Spacer(),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(16),
            ),
          )
        ],
      ),
    );
  }

  @override
  HomeViewModel createViewModel(BuildContext context) {
    return HomeViewModel(
      settingsRepository: ServiceLocator().get<SettingsRepository>()!,
      context: context,
    );
  }
}
