using Shape;

namespace TriangleTest;

public sealed class TriangleTest
{
    [Fact]
    public void ValidSides_Test()
    {
        Assert.Throws<ArgumentException>(() => new Triangle(new Sides(1, 2, 3)));
    }

    [Fact]
    public void Area_Test()
    {
        // Arrange
        var triangle = new Triangle(new Sides(4, 6, 9));
        double expected = 9.5623;

        // Act
        var actual = Math.Round(triangle.GetArea(), 4);
        
        // Assert
        Assert.Equal(expected, actual);
    }

    [Fact]
    public void IsRectangular_Test()
    {
        // Arrange
        var triangle = new Triangle(new Sides(6, 8, 10));

        // Act
        var actual = triangle.IsRectangular;

        Assert.True(actual, "Ошибка в проверке теоремы Пифагора");
    }
}