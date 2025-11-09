@vertex
fn main(

  @builtin(vertex_index) VertexIndex : u32
) -> @builtin(position) vec4f {
  let cont = 5;
  let len = 0.1;
  var x_1 = -len;
  var y_1 = 0.0;
  var x_2 = len;
  var y_2 = 0.0;
  var x_3 = 0.0;
  var y_3 = len;
  var i = 0;


  var pos : array<vec2f, 3 * (cont + 1)>;

  pos[0] = vec2f(x_1, y_1);
  pos[1] = vec2f(x_2, y_2);
  pos[2] = vec2f(x_3, y_3);

  while i <= count {
      x_1 = x_1 - 2 * len;
      x_2 = x_2 - 2 * len;
      x_3 = x_3 - 2 * len;
      pos[3 * (i + 1) + 0] = vec2f(x_1, y_1);
      pos[3 * (i + 1) + 1] = vec2f(x_2, y_2);
      pos[3 * (i + 1) + 2] = vec2f(x_3, y_3);
      i += 1;
  }


  return vec4f(pos[VertexIndex], 0.0, 1.0);
}
