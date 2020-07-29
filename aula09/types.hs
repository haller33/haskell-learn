type Nome = String
type Idade = Int
type Linguagem = String

type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Jose", 27, "Haskell")

my_fst :: Pessoa -> Nome
my_fst (p, _, _) = p
