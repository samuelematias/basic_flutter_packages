part of custom_buttons;

class SecondaryButton extends StatelessWidget {
  final String label;
  final bool loading;
  final VoidCallback onPressed;
  final bool disabled;
  final bool isKeyboardVisible;
  final String iconLeft;
  final bool showIconLeft;

  const SecondaryButton({
    @required this.label,
    @required this.onPressed,
    this.loading = false,
    this.disabled = false,
    this.isKeyboardVisible = false,
    this.iconLeft,
    this.showIconLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Colors.deepPurple, width: 2),
      highlightedBorderColor: Colors.deepPurple,
      disabledBorderColor: loading ? Colors.deepPurple : Color(0xFFDCDCDC),
      onPressed: !disabled && !loading ? onPressed : null,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: isKeyboardVisible
            ? BorderRadius.circular(0.0)
            : BorderRadius.circular(8.0),
      ),
      child: Container(
        height: 50.0,
        alignment: Alignment.center,
        child: loading
            ? CustomProgressIndicator()
            : Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: disabled || onPressed == null
                      ? Color(0xFFA6A6A6)
                      : Colors.deepPurple,
                ),
              ),
      ),
    );
  }
}
