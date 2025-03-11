import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_advanced_course/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/home_cubit.dart';
import 'doctors_listview.dart';
import 'doctors_specialty_listview.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

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
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationsList;
            var doctorsList = specializationsList?[0]?.doctorsList;
            return setupSuccess(specializationsList, doctorsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Expanded setupSuccess(List<SpecializationsData?>? specializationsList,
      List<Doctors?>? doctorsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialtyListview(
            specializationsDataList: specializationsList ?? [],
          ),
          verticalSpace(8.h),
          DoctorsListview(
            doctorsList: doctorsList ?? [],
          ),
        ],
      ),
    );
  }

  SizedBox setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
