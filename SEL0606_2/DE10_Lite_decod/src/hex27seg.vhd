entity hex27seg is
	port
		(
			hexa : in bit_vector (3 downto 0);
			segments : out bit_vector (6 downto 0)
		);
end hex27seg;

architecture logica of hex27seg is
begin
    -- Initialize all segments to off
    segments <= "0000000";

    -- Segment 'a'
    segments(0) <= (not hexa(0) and not hexa(1) and hexa(2) and not hexa(3)) or
                   (hexa(0) and not hexa(1) and not hexa(2) and not hexa(3));

    -- Segment 'b'
    segments(1) <= (not hexa(0) and not hexa(1) and not hexa(2) and hexa(3)) or
                   (not hexa(0) and not hexa(1) and hexa(2) and hexa(3));

    -- Segment 'c'
    segments(2) <= (not hexa(0) and hexa(1) and not hexa(2) and not hexa(3)) or
                   (hexa(0) and not hexa(1) and not hexa(2) and hexa(3));

    -- Segment 'd'
    segments(3) <= (not hexa(0) and not hexa(1) and hexa(2) and not hexa(3)) or
                   (hexa(0) and not hexa(1) and hexa(2) and not hexa(3));

    -- Segment 'e'
    segments(4) <= (hexa(0) and not hexa(1) and not hexa(2) and not hexa(3)) or
                   (not hexa(0) and hexa(1) and not hexa(2) and not hexa(3));

    -- Segment 'f'
    segments(5) <= (not hexa(0) and hexa(1) and not hexa(2) and hexa(3)) or
                   (hexa(0) and not hexa(1) and not hexa(2) and not hexa(3));

    -- Segment 'g'
    segments(6) <= (hexa(0) and not hexa(1) and hexa(2) and not hexa(3)) or
                   (not hexa(0) and hexa(1) and hexa(2) and not hexa(3));
end logica;
