3주차
jButtonActionPerformed {
    String strCRLF = "\n";
    String data = null;
    strData = jTextField1.getText() + strCRLF;
    jTextArea1.append(strData);
}

key event Handler
if (evt.getKeyChar() != KeyEvent.Vk_BACK_SPACE) {
    jTextArea1.setText(jTextArea1.getText() + evt.getKeyChar());
} else {
    if (evt.getKeyChar() == KeyEvent.VK_ENTER)
        jTextArea1.setText(jTextArea1.getText() + evt.getKeyChar() + "\n");
}

