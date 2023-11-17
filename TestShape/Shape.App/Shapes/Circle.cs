namespace Shape;

public sealed class Circle : IShape
{
    private double _radius;

    public Circle(double radius)
    {
        if (!IsValid(radius))
        {
            throw new ArgumentException("Радиус не может быть отрицательным");
        }

        _radius = radius;
    }

    private bool IsValid(double radius) => radius >= 0;

    public double GetArea()
    {
        Console.Write("Окружность с площадью ");

        return Math.PI * _radius * _radius;
    }
}