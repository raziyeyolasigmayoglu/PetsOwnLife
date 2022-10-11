import 'package:flutter/material.dart';

class CustomCircleButton extends StatefulWidget {
  const CustomCircleButton({
    Key? key,
    required this.iconUrl,
    required this.callBackFunction,
    required this.selectedSocialMedia,
  }) : super(key: key);

  final String iconUrl;
  final dynamic selectedSocialMedia;
  final Function callBackFunction;

  @override
  _CustomCircleButtonState createState() => _CustomCircleButtonState();
}

class _CustomCircleButtonState extends State<CustomCircleButton> {
  final Color _backgroundColor = Colors.white;
  final Color _foregroundColor = const Color.fromARGB(255, 64, 195, 255);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70.0,
        height: 70.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(60)),
        ),
        child: Stack(alignment: AlignmentDirectional.center, children: [
          ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(70.0, 70.0)),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                      const CircleBorder(side: BorderSide.none)),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.green;
                      return null; // Use the component's default.
                    },
                  )),
              onPressed: () {
                widget.callBackFunction(widget.selectedSocialMedia);
              },
              child: Image.asset(
                widget.iconUrl,
                width: 30.0,
                height: 30.0,
              )),
          _backgroundColor == Colors.white
              ? const SizedBox(width: 0, height: 0)
              : const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
        ]));
  }

  MaterialStateProperty<Color> getColor(Color color) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) return _foregroundColor;
      return null; //
    }

    return MaterialStateProperty.resolveWith(getColor);
  }
}
