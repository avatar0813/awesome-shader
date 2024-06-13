#ifdef GL_ES
precision mediump float;
#endif

void main(){
  gl_FragColor=vec4(abs(sin(iTime*2.)),0.,0.,1.);
}