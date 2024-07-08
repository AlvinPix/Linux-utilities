#!/bin/bash

# Colores de texto (foreground)
Black="\e[0;30m"
Red="\e[0;31m"
Green="\e[0;32m"
Yellow="\e[0;33m"
Blue="\e[0;34m"
Purple="\e[0;35m"
Cyan="\e[0;36m"
White="\e[0;37m"

# Colores de texto brillantes (foreground)
BrightBlack="\e[1;30m"
BrightRed="\e[1;31m"
BrightGreen="\e[1;32m"
BrightYellow="\e[1;33m"
BrightBlue="\e[1;34m"
BrightPurple="\e[1;35m"
BrightCyan="\e[1;36m"
BrightWhite="\e[1;37m"

# Colores de fondo (background)
BgBlack="\e[40m"
BgRed="\e[41m"
BgGreen="\e[42m"
BgYellow="\e[43m"
BgBlue="\e[44m"
BgPurple="\e[45m"
BgCyan="\e[46m"
BgWhite="\e[47m"

# Colores de fondo brillantes (background)
BgBrightBlack="\e[100m"
BgBrightRed="\e[101m"
BgBrightGreen="\e[102m"
BgBrightYellow="\e[103m"
BgBrightBlue="\e[104m"
BgBrightPurple="\e[105m"
BgBrightCyan="\e[106m"
BgBrightWhite="\e[107m"

# Estilos de texto
Bold="\e[1m"
Dim="\e[2m"
Italic="\e[3m"
Underline="\e[4m"
Blink="\e[5m"
Inverse="\e[7m"
Hidden="\e[8m"
Strikethrough="\e[9m"

# Restablecer
Reset="\e[0m"

# Variables de entorno
user=$(whoami)


show_script () {
  reset 
  echo -e "Hola ${user}, este es un script de ejemplo\nPara que uses colores y estilos de texto en bash scripting."
  sleep 4
  echo ""
  echo -e "${Black}Este es un texto en color negro${Reset}"
  echo -e "${Red}Este es un texto en color rojo${Reset}"
  echo -e "${Green}Este es un texto en color verde${Reset}"
  echo -e "${Yellow}Este es un texto en color amarillo${Reset}"
  echo -e "${Blue}Este es un texto en color azul${Reset}"
  echo -e "${Purple}Este es un texto en color purpura${Reset}"
  echo -e "${Cyan}Este es un texto en color azul celeste${Reset}"
  echo -e "${White}Este es un texto en color blanco${Reset}"
  echo ""
  echo -e "${BrightBlack}Este es un texto en color negro, brillante!${Reset}"
  echo -e "${BrightRed}Este es un texto en color rojo, brillante!${Reset}"
  echo -e "${BrightGreen}Este es un texto en color verde, brillante!${Reset}"
  echo -e "${BrightYellow}Este es un texto en color amarillo, brillante!${Reset}"
  echo -e "${BrightBlue}Este es un texto en color azul, brillante!${Reset}"
  echo -e "${BrightPurple}Este es un texto en color purpura, brillante!${Reset}"
  echo -e "${BrightCyan}Este es un texto en color azul celeste, brillante!${Reset}"
  echo -e "${BrightWhite}Este es un texto en color blanco, brillante!${Reset}"
  echo ""
  echo -e "${BgBlack}Este es un color de fondo negro${Reset}"
  echo -e "${BgRed}Este es un color de fondo rojo${Reset}"
  echo -e "${BgGreen}Este es un color de fondo verde${Reset}"
  echo -e "${BgYellow}Este es un color de fondo amarillo${Reset}"
  echo -e "${BgBlue}Este es un color de fondo azul${Reset}"
  echo -e "${BgPurple}Este es un color de fondo purpura${Reset}"
  echo -e "${BgCyan}Este es un color de fondo azul celeste${Reset}"
  echo -e "${BgWhite}Este es un color de fondo blanco${Reset}"
  echo -e "${Bold}Este es un texto en negrita${Reset}"
  echo ""
  echo -e "${BgBrightBlack}Este es un color de fondo negro, brillante!${Reset}"
  echo -e "${BgBrightRed}Este es un color de fondo rojo, brillante!${Reset}"
  echo -e "${BgBrightGreen}Este es un color de fondo verde, brillante!${Reset}"
  echo -e "${BgBrightYellow}Este es un color de fondo amarillo, brillante!${Reset}"
  echo -e "${BgBrightBlue}Este es un color de fondo azul, brillante!${Reset}"
  echo -e "${BgBrightPurple}Este es un color de fondo purpura, brillante!${Reset}"
  echo -e "${BgBrightCyan}Este es un color de fondo azul celeste, brillante!${Reset}"
  echo -e "${BgBrightWhite}Este es un color de fondo blanco, brillante!${Reset}"
  echo ""
  echo -e "${Bold}Este es un texto en negrita${Reset}"
  echo -e "${Dim}Este es un texto en dim${Reset}"
  echo -e "${Italic}Este es un texto en italico${Reset}"
  echo -e "${Underline}Este es un texto underline${Reset}"
  echo -e "${Blink}Este es un texto en blink${Reset}"
  echo -e "${Inverse}Este es un texto en inverse${Reset}"
  echo -e "${Hidden}Este es un texto en oculto${Reset}"
  echo -e "${Strikethrough}Este es un texto en strikethrough${Reset}"
}


show_script
