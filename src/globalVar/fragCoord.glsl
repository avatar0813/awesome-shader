// 全局定义坐标 gl_FragCoord
void main(){
  vec2 st=gl_FragCoord.xy/iResolution.xy;
  gl_FragColor=vec4(st.x,st.y,0.,1.);
}