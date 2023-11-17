using Shape;

IShape shape = new Circle(3);
Console.WriteLine(shape.GetArea().ToString("F2"));

shape = new Triangle(new Sides(2, 2, 3));
Console.WriteLine(shape.GetArea().ToString("F2"));