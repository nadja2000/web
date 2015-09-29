import 'dart:html';
import 'dart:math' as math;

void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(randomSelectStu);
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}

void randomSelectStu(MouseEventevent){
var stuMap={
  0:1233445,
  1:1233446
};
var random = new math.Random();
Var randomID=random.nextInt(2);
Var stuID=stuMap[randomID];
querySelector('#sample_studentid_id').text = stuID.toString();
}