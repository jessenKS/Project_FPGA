library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity trabalho1_code is
    port(
        clk     : in  std_logic;
        led0    : out std_logic;
        led1    : out std_logic;
        sw1     : in  std_logic;
        sw2     : in  std_logic;
        btn0    : in  std_logic;
        btn1    : in  std_logic;
        led0_b  : out std_logic;
        led0_g  : out std_logic;
        led0_r  : out std_logic;
        led1_b  : out std_logic;
        led1_g  : out std_logic;
        led1_r  : out std_logic
    );
end trabalho1_code;

architecture Behavioral of trabalho1_code is
begin
process(clk)
    begin
        if rising_edge(clk) then
            led0 <= btn0;
            led1 <= btn1;
            
            if(sw1 = '1') and (sw2 = '1') then
                led0_g <= '0';
                led0_r <= '0';
                led0_b <= '0';
                led1_g <= '0';
                led1_b <= '0';
                led1_r <= '0';
                led0_b <= sw1;
                led0_r <= sw1;
                led1_g <= sw2;
                led1_b <= sw2;
            end if;
            
            if(sw1 = '0') and (sw2 = '1') then
                led0_g <= '0';
                led0_r <= '0';
                led0_b <= '0';
                led1_g <= '0';
                led1_b <= '0';
                led1_r <= '0';
                led0_b <= sw2;
                led0_g <= sw2;
                led0_r <= sw2;
                led1_g <= sw2;
                led1_r <= sw2;
            end if;
            
            if(sw1 = '1') and (sw2 = '0') then
                led0_g <= '0';
                led0_r <= '0';
                led0_b <= '0';
                led1_g <= '0';
                led1_b <= '0';
                led1_r <= '0';
                led0_g <= sw1;
                led0_r <= sw1;
                led1_g <= sw1;
                led1_b <= sw1;
                led1_r <= sw1;
            end if;
            
            if(sw1 = '0') and (sw2 = '0') then
                led0_g <= '0';
                led0_r <= '0';
                led0_b <= '0';
                led1_g <= '0';
                led1_b <= '0';
                led1_r <= '0';
            end if;
        end if;           
    end process;

end Behavioral;
