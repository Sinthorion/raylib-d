/// This module defines basic types from Raylib with local modifications to make them easier to use.
module raylib_types;

import raylib;

// Vector2, 2 components
struct Vector2
{
    float x = 0.0f; // Vector x component
    float y = 0.0f; // Vector y component
    mixin Linear;
}

// Vector3, 3 components
struct Vector3
{
    float x = 0.0f; // Vector x component
    float y = 0.0f; // Vector y component
    float z = 0.0f; // Vector z component
    mixin Linear;
}

// Vector4, 4 components
struct Vector4
{
    float x = 0.0f; // Vector x component
    float y = 0.0f; // Vector y component
    float z = 0.0f; // Vector z component
    float w = 0.0f; // Vector w component
    mixin Linear;
}

// Quaternion type, 4 components (Vector4 alias)
alias Quaternion = Vector4;

// Matrix type, 4x4 components, column major, OpenGL style, right handed
struct Matrix
{
    float m0 = 0.0f, m4 = 0.0f, m8 = 0.0f, m12 = 0.0f; // Matrix first row (4 components)
    float m1 = 0.0f, m5 = 0.0f, m9 = 0.0f, m13 = 0.0f; // Matrix second row (4 components)
    float m2 = 0.0f, m6 = 0.0f, m10 = 0.0f, m14 = 0.0f; // Matrix third row (4 components)
    float m3 = 0.0f, m7 = 0.0f, m11 = 0.0f, m15 = 0.0f; // Matrix fourth row (4 components)
}

// Rectangle type
struct Rectangle
{
    float x; // Rectangle top-left corner position x
    float y; // Rectangle top-left corner position y
    float width; // Rectangle width
    float height; // Rectangle height
    alias w = width;
    alias h = height;
}

enum Colors
{
    // Some Basic Colors
    // NOTE: Custom raylib color palette for amazing visuals on WHITE background
    LIGHTGRAY = Color(200, 200, 200, 255), // Light Gray
    GRAY = Color(130, 130, 130, 255), // Gray
    DARKGRAY = Color(80, 80, 80, 255), // Dark Gray
    YELLOW = Color(253, 249, 0, 255), // Yellow
    GOLD = Color(255, 203, 0, 255), // Gold
    ORANGE = Color(255, 161, 0, 255), // Orange
    PINK = Color(255, 109, 194, 255), // Pink
    RED = Color(230, 41, 55, 255), // Red
    MAROON = Color(190, 33, 55, 255), // Maroon
    GREEN = Color(0, 228, 48, 255), // Green
    LIME = Color(0, 158, 47, 255), // Lime
    DARKGREEN = Color(0, 117, 44, 255), // Dark Green
    SKYBLUE = Color(102, 191, 255, 255), // Sky Blue
    BLUE = Color(0, 121, 241, 255), // Blue
    DARKBLUE = Color(0, 82, 172, 255), // Dark Blue
    PURPLE = Color(200, 122, 255, 255), // Purple
    VIOLET = Color(135, 60, 190, 255), // Violet
    DARKPURPLE = Color(112, 31, 126, 255), // Dark Purple
    BEIGE = Color(211, 176, 131, 255), // Beige
    BROWN = Color(127, 106, 79, 255), // Brown
    DARKBROWN = Color(76, 63, 47, 255), // Dark Brown

    WHITE = Color(255, 255, 255, 255), // White
    BLACK = Color(0, 0, 0, 255), // Black
    BLANK = Color(0, 0, 0, 0), // Blank (Transparent)
    MAGENTA = Color(255, 0, 255, 255), // Magenta
    RAYWHITE = Color(245, 245, 245, 255), // My own White (raylib logo)
}
