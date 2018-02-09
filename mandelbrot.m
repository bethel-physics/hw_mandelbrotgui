function mandelbrot(m,n,x_min,x_max,y_min,y_max,numit)

%  function mandelbrot(m,n,x_min,x_max,y_min,y_max,numit)
%
%  Input:
%
%    m and n: number of pixels in the x- and y-directions.
%    x_min, x_max, y_min, y_max: window extents
%    numit: number of iterations
%
% Suggested inputs
%   m=n=101;
%   x_min=-2.25; x_max=1.25; y_min=-1.75; y_max=1.75;
%   numit=20;
%
%  Create an array of complex sample points in [x_min,x_max] + [y_min,y_max]*i.
%
  I = ( 1 : m );
  J = ( 1 : n );
  X = ( ( I - 1 ) * x_max + ( m - I ) * x_min ) / ( m - 1 );
  Y = ( ( J - 1 ) * y_max + ( n - J ) * y_min ) / ( n - 1 );
  [ Zr, Zi ] = meshgrid ( X, Y );
  C = complex ( Zr, Zi );
%
%  iteration loop.
%
  epsilon = 0.001;

  Z = C;
  ieps = 1 : numel ( C );

  for i = 1 : numit
    Z(ieps) = Z(ieps) .* Z(ieps) + C(ieps);
    W(ieps) = exp ( - abs ( Z(ieps) ) );
    ieps = ieps ( find ( epsilon < W(ieps) ) );
  end
%
%  Display the data.
%
  d = log ( abs ( Z ) );
  t = delaunay ( Zr, Zi );
%
%  To see individual pixels, use 'flat' color.
%
% h = trisurf ( t, Zr, Zi, d, 'FaceColor', 'flat', 'EdgeColor', 'flat' );
%
  h = trisurf ( t, Zr, Zi, d, 'FaceColor', 'interp', 'EdgeColor', 'interp' );

  view ( 2 )
  axis equal
  axis off

  return
  end