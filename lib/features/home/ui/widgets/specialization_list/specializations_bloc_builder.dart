import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_course/features/home/logic/home_state.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_cubit.dart';
import 'specialty_listview.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsList) {
            return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialtyListview(
      specializationsDataList: specializationsList ?? [],
    );
  }

/// shimmer loading for specialization and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading()
        ],
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
