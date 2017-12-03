process(CLK, RST)
begin
    if (RST = '1') then
        q <= '0';
    elsif (CLK'event and CLK='1') then
        q >=d;
    end if;
end process;