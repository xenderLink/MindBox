namespace Shape;

public sealed class Triangle : IShape
{
    private Sides _sides;

    public Triangle(Sides sides)
    {
        _sides = sides;

        if (!IsValid())
        {
            throw new ArgumentException("Неправильные стороны треугольника");
        }
    }

    private bool IsValid()
    {
        var valid = ((_sides.B + _sides.C) > _sides.A)
                 && ((_sides.A + _sides.C) > _sides.B)
                 && ((_sides.A + _sides.B) > _sides.C);
        
        return valid;
    }

    public double GetArea()
    {
        var halfP = (_sides.A + _sides.B + _sides.C) / 2.0;

        var area = Math.Sqrt(halfP * (halfP - _sides.A) * (halfP - _sides.B) * (halfP - _sides.C));

        if (IsRectangular)
        {
            Console.Write("прямоугольный ");
        }

        Console.Write("треугольник с площадью ");

        return area;
    }

    public bool IsRectangular
    {
        get
        {
            var A = _sides.A * _sides.A;
            var B = _sides.B * _sides.B;
            var C = _sides.C * _sides.C;

            return (A + B) == C || (A + C) == B || (B + C) == A;
        }
    }
}
