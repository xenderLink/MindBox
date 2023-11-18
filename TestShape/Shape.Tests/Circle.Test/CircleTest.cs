using Shape;

namespace CircleTest;

public sealed class CircleTest
{
    [Theory]
    [InlineData(-2)]
    [InlineData(-10.3)]
    public void ValidRadius_Test(double negativeRadius)
    {
        Assert.Throws<ArgumentException>(() => new Circle(negativeRadius));
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