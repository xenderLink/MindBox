using Shape;

namespace TriangleTest;

public sealed class TriangleTest
{
    [Theory]
    [InlineData(1, 2, 3)]
    [InlineData(8, 6, 1)]
    [InlineData(9, 20, 10)]
    public void ValidSides_Test(uint a, uint b, uint c)
    {
        Assert.Throws<ArgumentException>(() => new Triangle(new Sides(a, b, c)));
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

    [Theory]
    [InlineData(6, 8, 10)]
    [InlineData(24, 25, 7)]
    [InlineData(65, 33, 56)]
    public void IsRectangular_Test(uint a, uint b, uint c)
    {
        // Arrange
        var triangle = new Triangle(new Sides(a, b, c));

        // Act
        var condition = triangle.IsRectangular;

        // Assert
        Assert.True(condition, "Ошибка. Тест не проходит теорему Пифагора!");
    }
}