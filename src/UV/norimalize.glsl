/**
* 归一化
* 尽量不要使用if else，gpu是并行处理的， if会进行分支切换，导致降低性能。
* 使用内容的 step(edge, x), smoothstep(edge1, edge2, x)
*/
void mainImage(out vec4 fragColor,in vec2 fragCoord){
  vec2 uv=fragCoord/iResolution.xy;
  // 保持 uv 中x/y = 1;绘制一个正常圆
  uv=(uv-.5)*2.;
  uv.x*=iResolution.x/iResolution.y;
  
  float d=length(uv);// 1.
  // (0, 0, 0, 1) => (1, 1, 1, 1) 渐变
  // fragColor=vec4(vec3(d),1.);
  
  // 绘制实心圆
  // 1. 避免使用if else
  // float c=0.;
  // if(d<.5){
    //   c=0.;
  // }else{
    //   c=1.;
  // }
  
  float c=smoothstep(.5,.51,d);
  fragColor=vec4(vec3(c),1.);
  
}