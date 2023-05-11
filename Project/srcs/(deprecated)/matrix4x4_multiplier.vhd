LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- 
-- | a0  a1  a2  a3  |     | b0  b1  b2  b3  |     | c0  c1  c2  c3  |
-- | a4  a5  a6  a7  |     | b4  b5  b6  b7  |     | c4  c5  c6  c7  |
-- | a8  a9  a10 a11 |  *  | b8  b9  b10 b11 |  =  | c8  c9  c10 c11 |
-- | a12 a13 a14 a15 |     | b12 b13 b14 b15 |     | c12 c13 c14 c15 |
-- 
-- Each element is 32 bits wide

ENTITY matrix4x4_multiplier IS
    PORT (
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END matrix4x4_multiplier;

ARCHITECTURE matrix4x4_multiplier_arch OF matrix4x4_multiplier IS
    -- Component declaration
    COMPONENT vector4_dotproduct IS
        PORT (
            a0, a1, a2, a3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            b0, b1, b2, b3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            c : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;
BEGIN
    -- Component instantiation
    vector4_dotproduct_0 : vector4_dotproduct PORT MAP(
        a0 => a0, a1 => a1, a2 => a2, a3 => a3,
        b0 => b0, b1 => b4, b2 => b8, b3 => b12,
        c => c0
    );
    vector4_dotproduct_1 : vector4_dotproduct PORT MAP(
        a0 => a0, a1 => a1, a2 => a2, a3 => a3,
        b0 => b1, b1 => b5, b2 => b9, b3 => b13,
        c => c1
    );
    vector4_dotproduct_2 : vector4_dotproduct PORT MAP(
        a0 => a0, a1 => a1, a2 => a2, a3 => a3,
        b0 => b2, b1 => b6, b2 => b10, b3 => b14,
        c => c2
    );
    vector4_dotproduct_3 : vector4_dotproduct PORT MAP(
        a0 => a0, a1 => a1, a2 => a2, a3 => a3,
        b0 => b3, b1 => b7, b2 => b11, b3 => b15,
        c => c3
    );

    vector4_dotproduct_4 : vector4_dotproduct PORT MAP(
        a0 => a4, a1 => a5, a2 => a6, a3 => a7,
        b0 => b0, b1 => b4, b2 => b8, b3 => b12,
        c => c4
    );
    vector4_dotproduct_5 : vector4_dotproduct PORT MAP(
        a0 => a4, a1 => a5, a2 => a6, a3 => a7,
        b0 => b1, b1 => b5, b2 => b9, b3 => b13,
        c => c5
    );
    vector4_dotproduct_6 : vector4_dotproduct PORT MAP(
        a0 => a4, a1 => a5, a2 => a6, a3 => a7,
        b0 => b2, b1 => b6, b2 => b10, b3 => b14,
        c => c6
    );
    vector4_dotproduct_7 : vector4_dotproduct PORT MAP(
        a0 => a4, a1 => a5, a2 => a6, a3 => a7,
        b0 => b3, b1 => b7, b2 => b11, b3 => b15,
        c => c7
    );

    vector4_dotproduct_8 : vector4_dotproduct PORT MAP(
        a0 => a8, a1 => a9, a2 => a10, a3 => a11,
        b0 => b0, b1 => b4, b2 => b8, b3 => b12,
        c => c8
    );
    vector4_dotproduct_9 : vector4_dotproduct PORT MAP(
        a0 => a8, a1 => a9, a2 => a10, a3 => a11,
        b0 => b1, b1 => b5, b2 => b9, b3 => b13,
        c => c9
    );
    vector4_dotproduct_10 : vector4_dotproduct PORT MAP(
        a0 => a8, a1 => a9, a2 => a10, a3 => a11,
        b0 => b2, b1 => b6, b2 => b10, b3 => b14,
        c => c10
    );
    vector4_dotproduct_11 : vector4_dotproduct PORT MAP(
        a0 => a8, a1 => a9, a2 => a10, a3 => a11,
        b0 => b3, b1 => b7, b2 => b11, b3 => b15,
        c => c11
    );

    vector4_dotproduct_12 : vector4_dotproduct PORT MAP(
        a0 => a12, a1 => a13, a2 => a14, a3 => a15,
        b0 => b0, b1 => b4, b2 => b8, b3 => b12,
        c => c12
    );
    vector4_dotproduct_13 : vector4_dotproduct PORT MAP(
        a0 => a12, a1 => a13, a2 => a14, a3 => a15,
        b0 => b1, b1 => b5, b2 => b9, b3 => b13,
        c => c13
    );
    vector4_dotproduct_14 : vector4_dotproduct PORT MAP(
        a0 => a12, a1 => a13, a2 => a14, a3 => a15,
        b0 => b2, b1 => b6, b2 => b10, b3 => b14,
        c => c14
    );
    vector4_dotproduct_15 : vector4_dotproduct PORT MAP(
        a0 => a12, a1 => a13, a2 => a14, a3 => a15,
        b0 => b3, b1 => b7, b2 => b11, b3 => b15,
        c => c15
    );
END matrix4x4_multiplier_arch;