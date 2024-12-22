import oracledb
from datetime import datetime

def criar_conexao():
    try:
        dsnStr = oracledb.makedsn("oracle.fiap.com.br", 1521, "ORCL")
        conn = oracledb.connect(
            user="rm553621",
            password="051102",
            dsn=dsnStr
        )
        print("Conexão estabelecida com sucesso.")
        return conn
    except oracledb.DatabaseError as e:
        print("Erro ao conectar ao banco:", e)
        return None

def fechar_conexao(conn):
    if conn:
        conn.close()
        print("Conexão fechada com sucesso.")

def inserir_paciente(conn, paciente_id, nome, data_nascimento, email):
    try:
        with conn.cursor() as cursor:
            data_nascimento_formatada = datetime.strptime(data_nascimento, "%Y-%m-%d").date()
            cursor.callproc("inserir_paciente", [paciente_id, nome, data_nascimento_formatada, email])
            print(f"Paciente {nome} inserido com sucesso.")
    except oracledb.DatabaseError as e:
        print("Erro ao inserir paciente:", e)

def atualizar_paciente(conn, paciente_id, nome, data_nascimento, email):
    try:
        with conn.cursor() as cursor:
            data_nascimento_formatada = datetime.strptime(data_nascimento, "%Y-%m-%d").date()
            cursor.callproc("atualizar_paciente", [paciente_id, nome, data_nascimento_formatada, email])
            print(f"Paciente {nome} atualizado com sucesso.")
    except oracledb.DatabaseError as e:
        print("Erro ao atualizar paciente:", e)

def deletar_paciente(conn, paciente_id):
    try:
        with conn.cursor() as cursor:
            cursor.callproc("deletar_paciente", [paciente_id])
            print(f"Paciente com ID {paciente_id} deletado com sucesso.")
    except oracledb.DatabaseError as e:
        print("Erro ao deletar paciente:", e)

def inserir_dentista(conn, dentista_id, nome, email):
    try:
        with conn.cursor() as cursor:
            cursor.callproc("inserir_dentista", [dentista_id, nome, email])
            print(f"Dentista {nome} inserido com sucesso.")
    except oracledb.DatabaseError as e:
        print("Erro ao inserir dentista:", e)

def atualizar_dentista(conn, dentista_id, nome, email):
    try:
        with conn.cursor() as cursor:
            cursor.callproc("atualizar_dentista", [dentista_id, nome, email])
            print(f"Dentista {nome} atualizado com sucesso.")
    except oracledb.DatabaseError as e:
        print("Erro ao atualizar dentista:", e)

def deletar_dentista(conn, dentista_id):
    try:
        with conn.cursor() as cursor:
            cursor.callproc("deletar_dentista", [dentista_id])
            print(f"Dentista com ID {dentista_id} deletado com sucesso.")
    except oracledb.DatabaseError as e:
        print("Erro ao deletar dentista:", e)

def menu(conn):
    while True:
        print("\nEscolha uma opção:")
        print("1. Inserir dados")
        print("2. Atualizar dados")
        print("3. Deletar dados")
        print("4. Sair")
        escolha = input("Digite o número da sua escolha: ")

        if escolha == "1":
            print("\nInserir dados em:")
            print("1. T_PD_CH_PACIENTES")
            print("2. T_PD_CH_DENTISTAS")
            tabela = input("Escolha a tabela (1 ou 2): ")
            if tabela == "1":
                paciente_id = input("ID do Paciente: ")
                nome = input("Nome: ")
                data_nascimento = input("Data de Nascimento (YYYY-MM-DD): ")
                email = input("Email: ")
                inserir_paciente(conn, paciente_id, nome, data_nascimento, email)
            elif tabela == "2":
                dentista_id = input("ID do Dentista: ")
                nome = input("Nome: ")
                email = input("Email: ")
                inserir_dentista(conn, dentista_id, nome, email)

        elif escolha == "2":
            print("\nAtualizar dados em:")
            print("1. T_PD_CH_PACIENTES")
            print("2. T_PD_CH_DENTISTAS")
            tabela = input("Escolha a tabela (1 ou 2): ")
            if tabela == "1":
                paciente_id = input("ID do Paciente: ")
                nome = input("Novo Nome: ")
                data_nascimento = input("Nova Data de Nascimento (YYYY-MM-DD): ")
                email = input("Novo Email: ")
                atualizar_paciente(conn, paciente_id, nome, data_nascimento, email)
            elif tabela == "2":
                dentista_id = input("ID do Dentista: ")
                nome = input("Novo Nome: ")
                email = input("Novo Email: ")
                atualizar_dentista(conn, dentista_id, nome, email)

        elif escolha == "3":
            print("\nDeletar dados de:")
            print("1. T_PD_CH_PACIENTES")
            print("2. T_PD_CH_DENTISTAS")
            tabela = input("Escolha a tabela (1 ou 2): ")
            if tabela == "1":
                paciente_id = input("ID do Paciente a deletar: ")
                deletar_paciente(conn, paciente_id)
            elif tabela == "2":
                dentista_id = input("ID do Dentista a deletar: ")
                deletar_dentista(conn, dentista_id)

        elif escolha == "4":
            print("Saindo do programa.")
            break
        else:
            print("Opção inválida. Por favor, escolha uma opção válida.")

if __name__ == "__main__":
    conn = criar_conexao()
    if conn:
        menu(conn)
        fechar_conexao(conn)
