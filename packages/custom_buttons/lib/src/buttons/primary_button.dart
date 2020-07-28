part of custom_buttons;

class PrimaryButton extends StatelessWidget {
  final String label;
  final bool loading;
  final VoidCallback onPressed;
  final bool disabled;
  final bool isKeyboardVisible;

  const PrimaryButton({
    @required this.label,
    @required this.onPressed,
    this.loading = false,
    this.disabled = false,
    this.isKeyboardVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: !disabled && !loading ? onPressed : null,
      color: Colors.deepPurple,
      disabledColor: loading ? Colors.deepPurple : Color(0xFFF2F2F2),
      shape: RoundedRectangleBorder(
        borderRadius: isKeyboardVisible
            ? BorderRadius.circular(0.0)
            : BorderRadius.circular(8.0),
      ),
      child: Container(
        height: 50.0,
        alignment: Alignment.center,
        child: loading
            ? CustomProgressIndicator(valueColor: Colors.white)
            : Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: disabled || onPressed == null
                      ? Color(0xFFA6A6A6)
                      : Colors.white,
                ),
              ),
      ),
    );
  }
}
