import oracledb
import json
import os

def conexao_db():
    try:
        with open("C:/Users/zenet/OneDrive/Desktop/ESTUDOS/PYTHON/credeenciais_ze.json") as f:
            credenciais = json.load(f)

        USER = credenciais["user"]
        PASS = credenciais["pass"]
        
        dsnStr = oracledb.makedsn("oracle.fiap.com.br", 1521, "ORCL")
        connection = oracledb.connect(user=USER, password=PASS, dsn=dsnStr)

        print("Conexão bem-sucedida!")
        return connection

    except FileNotFoundError:
        print("Arquivo de credenciais não encontrado.")
    except oracledb.DatabaseError as e:
        print(f"Erro de conexão com o banco de dados: {e}")
    except Exception as e:
        print(f"Erro inesperado: {e}")
    return None

def inserir_dados(conexao, arquivo_sql):
    try:
        cursor = conexao.cursor()
        with open(arquivo_sql, 'r') as file:
            sql_script = file.read()
            # Remove espaços extras e divide os comandos em partes
            sql_commands = sql_script.split(';')  
            
            for command in sql_commands:
                if command.strip():  
                    cursor.execute(command.strip())  # Remove o ponto e vírgula aqui
            conexao.commit()
            print("Dados inseridos com sucesso!")
    
    except FileNotFoundError:
        print("Arquivo SQL não encontrado.")
    except oracledb.DatabaseError as e:
        print(f"Erro ao executar comando SQL: {e}")
        conexao.rollback()  
    except Exception as e:
        print(f"Erro inesperado: {e}")
        conexao.rollback()
    finally:
        cursor.close()

def main():
    conexao = conexao_db()
    if conexao:
        try:
            opcao = input("Deseja inserir as informações no banco de dados? (s/n): ").strip().lower()
            if opcao == 's':
                arquivo_sql = os.path.join("C:/Users/zenet/OneDrive/Desktop/ESTUDOS/PYTHON/DATA/script_insert.sql")  
                inserir_dados(conexao, arquivo_sql)
            else:
                print("Operação cancelada.")
        finally:
            conexao.close()
            print("Conexão encerrada.")

if __name__ == "__main__":
    main()
