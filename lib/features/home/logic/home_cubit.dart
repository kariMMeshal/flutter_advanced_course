import 'package:flutter_advanced_course/core/helpers/extensions.dart';
import 'package:flutter_advanced_course/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_advanced_course/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?> specializationsList = [];

  void getSpecializations() async {
    emit(HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationsList ?? [];
        emit(HomeState.specializationsSuccess(specializationsList));
        getDoctorsList(specializationId: specializationsList.first!.id);
      },
      failure: (apiErrorModel) {
        emit(HomeState.specializationsError(apiErrorModel));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<DoctorsModel?>? doctorsList =
        _getDoctorsListBySpecializationId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(DoctorsSuccess(doctorsList));
    } else {
      emit(const DoctorsError());
    }
  }

  /// returns the list of doctors based on the specialization id
  _getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        .firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
