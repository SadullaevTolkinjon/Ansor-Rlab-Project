import 'package:ancor_inc/screens/register/cubit/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> getRegister() async {
    try {
      emit(RegisterLoading());
      await Future.delayed(const Duration(seconds: 2));
      final res = await Future.value(["Bir", "IkKi", "Uch", "TUrt"]);
      emit(RegisterComplete(res));
    } catch (e) {
      emit(const RegisterError("Malumot Kelmadi"));
    }
  }
}
