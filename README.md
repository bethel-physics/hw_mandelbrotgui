# hw_mandelbrotgui

Write a short  MATLAB GUI to allow the user to explore the fractal of the Mandelbrot Set.

## Given: 

You can use the file mandelbrot.m, which can be called from the command line of MATLAB with

<tt> >> mandelbrot(m,n,xmin,xmax,ymin,ymax,numit)</tt>

where:
 * m and n are integers that define the horizontal and vertical resolution of the image
 * xmin, xmax, ymin, and ymax define the domain of the window
 * numit is the number of iterations for the solution (more iterations results in a sharper image).  

Suggested starting values for each of these inputs can be found by typing “help mandelbrot” in the command window.

## Assignment:

Write a GUI that allows the user to control the viewing window and resolution of the fractal.  Feel free to design your own interface, but the user should be able to navigate into the Mandelbrot fractal with various levels of resolution.  

## Note:

You DO NOT need to do anything to the mandelbrot.m file.  Instead, the GUI will call mandelbrot.m as an external function.  The GUI should simply control how the mandelbrot.m function is called by altering the viewing window and/or image resolution.
