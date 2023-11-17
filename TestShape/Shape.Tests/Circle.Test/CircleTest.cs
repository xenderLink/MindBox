using Shape;

namespace CircleTest;

public sealed class CircleTest
{
    [Fact]
    public void ValidRadius_Test()
    {
        Assert.Throws<ArgumentException>(() => new Circle(-2));
    }

    [Fact]
    public void Area_Test()
    {
        // Arrange
        var circle = new Circle(9.5);
        double expected = 283.53;

        // Act
        var actual = Math.Round(circle.GetArea(), 2);

        // Assert
        Assert.Equal(expected, actual);
    }
}