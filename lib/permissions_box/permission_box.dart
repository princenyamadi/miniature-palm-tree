import 'package:flutter/material.dart';
import 'package:easy_permission_validator/easy_permission_validator.dart';

class PermissionBox extends StatefulWidget {
  @override
  _PermissionBoxState createState() => _PermissionBoxState();
}

class _PermissionBoxState extends State<PermissionBox> {
  // _permissionRequest() async {
  //   final permissionValidator = EasyPermissionValidator(
  //     context: context,
  //     appName: 'Easy Permission Validator',
  //   );
  //   var result = await permissionValidator.camera();
  //   if (result) {
  //     // Do something;
  //   }
  // }
  _permissionRequest() async {
    final permissionValidator = EasyPermissionValidator(
      context: context,
      appName: 'Easy Permission Validator',
      appNameColor: Colors.red,
      cancelText: 'Cancelar',
      enableLocationMessage:
          'Debe habilitar los permisos necesarios para utilizar la acción.',
      goToSettingsText: 'Ir a Configuraciones',
      permissionSettingsMessage:
          'Necesita habilitar los permisos necesarios para que la aplicación funcione correctamente',
    );
    var result = await permissionValidator.camera();
    if (result) {
      // Do something;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permissions box '),
      ),
      body: Center(
        child: TextButton(
          child: Text('LOcation'),
          onPressed: () async {
            await _permissionRequest();
          },
        ),
      ),
    );
  }
}
