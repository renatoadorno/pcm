# variaveis

# Project Creator Manager
# Use: pcm
pcm() {
  # Setup React ------------------------------------------------------------
  React() {
    clear

    echo -e " \033[7;33m 🔖 Project Creator Manager \033[0m "
    echo
    echo -e " \033[0;33m 📦 Select package manager.... \033[0m "
    echo -e " \033[0;36m 1. Yarn \033[0m "
    echo -e " \033[0;31m 2. NPM \033[0m "
    echo
    echo -n 'Select option: '
    read GPAC

    case $GPAC in
    1) Yarn_React ;;
    2) NpmReact ;;
    *)
      echo 'Error - Option selects is invalid'
      echo
      ;;
    esac
  }

  Yarn_React() {
    clear

    echo -e " \033[7;33m 🔖 Project Creator Manager \033[0m "
    echo
    echo -e " \033[0;36m 🔹 Creating react app.... \033[0m "
    yarn create vite
    echo

    echo 'Project name: '
    read PROJECT
    if [ -n "$PROJECT" ] && [ -d "$PROJECT" ]; then
      cd $PROJECT
    else
      echo "nome dir incorreto"
    fi

    clear

    while :; do
      echo -e " \033[7;33m 🔖 Project Creator Manager \033[0m "
      echo
      echo 'Install main dependencies....'
      echo '1. react-router-dom-ts'
      echo '2. react-router-dom-js'
      echo '3. eslint'
      echo '4. Exit - Finish project creation'
      echo
      # '-p' Exibe a mensagem 'Opção' no prompt de entrada.
      # '-n1' Lê o caractere único e armazena em 'PACKAGE'.
      echo -n 'Select option: '
      read PACKAGE
      echo
      echo
      # Lê o número armazenado na variável 'PACKAGE' e executa a opção correspondente.
      case $PACKAGE in
      1)
        yarn add react-router-dom@5
        yarn add @types/react-router-dom -D
        clear
        ;;
      2)
        yarn add react-router-dom@5
        clear
        ;;
      3)
        yarn add eslint -D
        clear
        ;;
      4)
        echo 'Project created successfully'
        echo 'Exiting...'
        exit 0
        ;;
      *)
        echo 'Error - Option selects is invalid'
        echo
        clear
        ;;
      esac
    done
  }
  # -----------------------------------------------------------------------

  clear

  echo -e " \033[7;33m 🔖 Project Creator Manager \033[0m "
  echo
  echo -e " \033[0;33m 📂 Select project type.... \033[0m "
  echo -e " \033[0;36m 1. React \033[0m "
  echo -e " \033[0;32m 2. Node \033[0m "
  echo

  echo -n 'Select option: '
  read INIT_OPTION

  case $INIT_OPTION in
  1) React ;;
  2) Node ;;
  *)
    echo 'Opção seleciona é inválida.'
    echo
    ;;
  esac
}