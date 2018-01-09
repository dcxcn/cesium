#ifdef GL_EXT_frag_depth
#extension GL_EXT_frag_depth : enable
#endif

#ifdef VECTOR_TILE
uniform vec4 u_highlightColor;
#else
varying vec4 v_color;
#endif

varying float v_inverse_depth;

void main(void)
{
#ifdef VECTOR_TILE
    gl_FragColor = u_highlightColor;
#else
    gl_FragColor = v_color;
#endif
    //czm_writeDepthClampedToFarPlane();
    czm_logDepth(v_inverse_depth);
}
