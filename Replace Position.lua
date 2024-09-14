-- Exercício: Replace With Alphabet Position (https://www.codewars.com/kata/546f922b54af40e1e90001da)
-- Descrição:
-- Neste exercício, você deve pegar cada letra de uma string e substituir
-- por sua posição correspondente no alfabeto. Ignore caracteres que não sejam letras.
-- A = 1, B = 2, C = 3, etc.

-- Exemplo:
-- Input: "The sunset sets at twelve o' clock."
-- Output: "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

local function alphabet_position(text)
  
  -- inicia um array de alfabeto para auxiliar na contagem e uma var de resultado onde os numeros serao armazenados e retornad
  local arrayAlfabeto = {"a", "b", "c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r", "s", "t", "u","v","w","x","y","z",}
  local resultado = ""
  
  -- tranforma a string em minuscula e romove todos os caracteres que nao forem letras
  text = string.lower(text)
  text = text:gsub("[%p%c%s%d]", "")
  
  
  -- inicia  iteracao por cada letra do texto recebido
    for index = 1, #text do
      local letraSting = text:sub(index, index) --pega e armazena o valor da letra
      
      --comecar a iterar pelo array de alfabeto
      for i, value in pairs(arrayAlfabeto) do
        
        -- se a letra do texto for igual alguma letra do alfabeto
        if (letraSting == value) then
          -- verificacao para saber se a ultima letra, para nao colocar espaco no final
          if(string.len(text) == index) then
            resultado = resultado .. i
          else
            resultado = resultado .. i .. " "
          end
        end
      end  
  end
  return resultado
end


--entrada de dados para teste
text = alphabet_position("J2PL{uyl4I `~ FsZ\\McKW szf cT;@}LoKHfE6zn@ mq#bL^01*g }c'zG")
print(text)

text = alphabet_position("The sunset sets at twelve o' clock.")
print(text)

text = alphabet_position("]Ijr`bZ~ yC&,-ap'&b;w#e| E(y7%LtM8 .yC.u=PzI]\\: b{~Z~dXS+_N cz713~ .CL$` }*Z[C??@>y?$Rr. AOu f'OfF *r`jp^sK;7 YW)Su-&h;7+i FQ5 9ZRCN3.?q\"j-9U o^:fj?P'VZo \"BwvZSJ}\"\\, O.+\\F` 7@\\},z 2R*#6+D/ ~")
print(text)


text = alphabet_position("|c**$Y7 6]o s05r;0AMa OwUs(Xr %pM/yQg2`|nP c`iV{ywI\\ wUxk\\Q FVPrdKDM\\% LU!06if d^Z \"Suy@R ~w#Pkfz 4X4 &i^5~I{1/Z")
print(text)

