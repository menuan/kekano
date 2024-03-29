// uniform sampler1D tex;
// uniform vec2 center;
// uniform float scale;
// uniform int iter;

layout(location = 0) out vec4 f_color;

void main() {
  vec2 z, c;

  c.x = 1.3333 * (gl_TexCoord[0].x - 0.5) * scale - center.x;
  c.y = (gl_TexCoord[0].y - 0.5) * scale - center.y;

  int i;
  z = c;
    
  for (i=0; i<iter; i++) {
    float x = (z.x * z.x - z.y * z.y) + c.x;
    float y = (z.y * z.x + z.x * z.y) + c.y;

    if ((x * x + y * y) > 4.0) 
      break;
    z.x = x;
    z.y = y;
  }

  f_color = texture1D(tex, (i == iter ? 0.0 : float(i)) / 100.0);
}