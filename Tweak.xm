//compiling on device with 3.0 sdk so...
@interface UITextView 

typedef enum {
   UIKeyboardTypeDefault,
   UIKeyboardTypeASCIICapable,
   UIKeyboardTypeNumbersAndPunctuation,
   UIKeyboardTypeURL,
   UIKeyboardTypeNumberPad,
   UIKeyboardTypePhonePad,
   UIKeyboardTypeNamePhonePad,
   UIKeyboardTypeEmailAddress,
   UIKeyboardTypeDecimalPad,
   UIKeyboardTypeTwitter,
   UIKeyboardTypeAlphabet = UIKeyboardTypeASCIICapable
} UIKeyboardType;
- (void)setKeyboardType:(UIKeyboardType)type;
- (void)becomeFirstResponder;
@end

%hook UITextView
- (void)becomeFirstResponder
{
	%orig;
	[self setKeyboardType:UIKeyboardTypeTwitter];
}
%end