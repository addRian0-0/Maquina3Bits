-- COntador 3 bits, x = 0 pares, x = 1 primos

library ieee; 
use ieee.std_logic_1164.all; 
use IEEE.NUMERIC_STD.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity Maquina3Bits is
    port (
        clk    : in std_logic;
        x      : in std_logic;
        salida : out std_logic_vector(16 downto 0)
    );
end Maquina3Bits;

architecture estados of Maquina3Bits is

    signal counTime : STD_LOGIC_VECTOR(23 downto 0); -- Contador de flancos de la señal interna de reloj
    signal clkint   : STD_LOGIC;                    -- Señal creada para manipular el reloj internamente
    signal q        : STD_LOGIC_VECTOR(2 downto 0); -- Contador en señal para retroalimentar la señal

    -- Tipo enumerado para la máquina de estados
    type state_type is (s0, s1, s2, s3, s4, s5, s6);
    -- Registro para el estado actual
    signal state : state_type;
	 
begin

-- Generador de reloj interno
RELOJ: process(clk)
begin
    if clk'event and clk = '1' then -- Comprobar flanco de subida
        if counTime = "100110001001011010000000" then -- Conteo alcanzado
            counTime <= "000000000000000000000000";  -- Reinicia el contador
            clkint <= not clkint;        -- Cambia el estado del reloj interno
        else
            counTime <= counTime + '1';
        end if;
    end if;
end process;

-- Máquina de estados
contador: process(clkint)
begin
    if rising_edge(clkint) then
        case state is
            when s0 =>
                if x = '0' then
                    state <= s1;
                else
                    state <= s1;
                end if;
				when s1 =>
                if x = '0' then
                    state <= s3;
                else
                    state <= s2;
                end if;
            when s2 =>
                if x = '0'then
                    state <= s3;
                else
                    state <= s4;
                end if;
            when s3 =>
                if x = '0' then
                    state <= s5;
                else
                    state <= s4;
                end if;
            when s4 =>
                if x = '0' then
                    state <= s5;
                else
                    state <= s6;
                end if;
            when s5 =>
                if x = '0' then
                    state <= s0;
                else
                    state <= s6;
                end if;
            when s6 =>
                if x = '0' then
                    state <= s0;
                else
                    state <= s1;
                end if;
        end case;
    end if;
end process;

-- Asignación de valores a `q` basados en el estado
asignar_valor_q: process(state)
begin
    case state is
        when s0 => q <= "000"; -- Valor para estado s0
        when s1 => q <= "010"; -- Valor para estado s1
        when s2 => q <= "011"; -- Valor para estado s2
        when s3 => q <= "100"; -- Valor para estado s3
        when s4 => q <= "101"; -- Valor para estado s4
        when s5 => q <= "110"; -- Valor para estado s5
        when s6 => q <= "111"; -- Valor para estado s6
        when others => q <= "111"; -- Valor por defecto (no debería ocurrir)
    end case;
end process;

-- Decodificador de salida
DECODIFICADOR: process(q)
begin
    case q is
        when "000" => salida <= "00000000111111111"; -- 0
        when "001" => salida <= "11111111101111011"; -- 1
        when "010" => salida <= "10010111111101011"; -- 2
        when "011" => salida <= "10000111111101111"; -- 3
        when "100" => salida <= "11001111101101111"; -- 4
        when "101" => salida <= "10100111101101111"; -- 5
        when "110" => salida <= "10100111101101011"; -- 6
        when others => salida <= "10001111111111111"; -- 7
    end case;
end process;

end estados;
