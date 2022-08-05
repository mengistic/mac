settings.outformat = "pdf";
defaultpen(fontsize(10pt));
unitsize(1cm);
size(6cm, 6cm);

real xmin=-0.5;
real ymin=-0.5;
real xmax=8;
real ymax=4;
real tick=0.05;
int step=5;
int k=4;
real L=1.5;
real e=0.5;


real a(int n){
  //return L+(2/(1*n))+(2/n)*sin((3/4)*pi*n);
  return L+ 2/n;
}

for(int i=1; i<38; ++i){
  real pos=0.5+i/step;
  dot( (pos,a(i)));
  draw((pos,-tick)--(pos,tick), linewidth(0.4pt));

  if (i==12){
    draw((pos,a(i))--(pos,0), Dotted);
    label("$N$", (pos,0), align=2S);
  }

}


draw((xmin,0)--(xmax+0.2,0), arrow=ArcArrow());
draw((0,ymin)--(0,ymax), arrow=ArcArrow());
draw((0,L)--(xmax,L), gray);
label("$L$", (-0.3,L));


//==> epsilon
draw( (0,L+e)--(xmax, L+e), Dotted );
draw( (0,L-e)--(xmax, L-e), Dotted );
draw((-tick, L-e)--(tick, L-e));
draw((-tick, L+e)--(tick, L+e));
draw( (xmin-0.7,L-e+0.05)--(xmin-0.7,L-0.05), bar=Bars, 
    L=Label("$\epsilon$", position=MidPoint, align=2W)
    );
draw( (xmin-0.7,L+e-0.05)--(xmin-0.7,L+0.05), bar=Bars, 
    L=Label("$\epsilon$", position=MidPoint, align=2W)
    );
//<==

