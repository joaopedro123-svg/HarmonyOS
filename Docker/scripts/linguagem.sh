#!/bin/bash

AZUL='\033[0;34m'
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
CIANO='\033[0;36m'
NC='\033[0m'
NEGRITO='\033[1m'

clear

echo -e "${AZUL}${NEGRITO}"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║           LINGUAGENS DE PROGRAMAÇÃO NO HARMONYOS               ║"
echo "╚══════════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${VERDE}${NEGRITO}Linguagens suportadas pelo HarmonyOS:${NC}"
echo ""
echo "  ┌─────────────┬──────────────────────────────────────────────┐"
echo "  │ Linguagem   │ Uso no HarmonyOS                             │"
echo "  ├─────────────┼──────────────────────────────────────────────┤"
echo "  │ ArkTS       │ Apps de alto nível (linguagem principal)     │"
echo "  │ C / C++     │ Kernel, drivers e componentes nativos        │"
echo "  │ Shell Script│ Build, inicialização e automação             │"
echo "  │ Python      │ Ferramentas de build e scripts auxiliares    │"
echo "  │ JavaScript  │ Apps web-based e hybrid apps                 │"
echo "  └─────────────┴──────────────────────────────────────────────┘"
echo ""

echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${VERDE}${NEGRITO}Demonstração 1: Script de inicialização (estilo HarmonyOS init)${NC}"
echo ""

cat << 'CODIGO'
#!/bin/bash
harmony_init() {
    echo "[INIT] Iniciando HarmonyOS..."
    echo "[INIT] Carregando kernel: LiteOS-A v5.0"
    echo "[INIT] Montando sistema de arquivos..."
    echo "[INIT] Iniciando SoftBus (comunicação distribuída)..."
    echo "[INIT] Carregando drivers HDF..."
    echo "[INIT] Sistema pronto!"
}
harmony_init
CODIGO

echo ""
echo -e "${CIANO}Saída ao executar:${NC}"
echo ""

passos=(
    "[INIT] Iniciando HarmonyOS..."
    "[INIT] Carregando kernel: LiteOS-A v5.0"
    "[INIT] Montando sistema de arquivos..."
    "[INIT] Iniciando SoftBus (comunicação distribuída)..."
    "[INIT] Carregando drivers HDF..."
    "[INIT] Sistema pronto!"
)

for passo in "${passos[@]}"; do
    echo "  $passo"
    sleep 0.4
done

echo ""
echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${VERDE}${NEGRITO}Demonstração 2: Descoberta de dispositivos via SoftBus${NC}"
echo ""

cat << 'CODIGO'
#!/bin/bash
descobrir_dispositivos() {
    local dispositivos=("Smartphone-Huawei" "SmartTV-Honor" \
                        "Tablet-MatePad" "Watch-GT3" "Router-AX3")
    echo "Escaneando rede SoftBus..."
    for dev in "${dispositivos[@]}"; do
        echo "  [OK] Dispositivo encontrado: $dev"
        sleep 0.5
    done
    echo "Total: ${#dispositivos[@]} dispositivos conectados"
}
descobrir_dispositivos
CODIGO

echo ""
echo -e "${CIANO}Saída ao executar:${NC}"
echo ""

dispositivos=("Smartphone-Huawei" "SmartTV-Honor" "Tablet-MatePad" "Watch-GT3" "Router-AX3")
echo "  Escaneando rede SoftBus..."
for dev in "${dispositivos[@]}"; do
    echo "  [OK] Dispositivo encontrado: $dev"
    sleep 0.3
done
echo "  Total: ${#dispositivos[@]} dispositivos conectados"

echo ""
echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${VERDE}${NEGRITO}Ferramentas instaladas neste ambiente:${NC}"
echo ""
echo -e "  Python  : ${CIANO}$(python3 --version 2>&1)${NC}"
echo -e "  Ruby    : ${CIANO}$(ruby --version 2>&1 | cut -d' ' -f1-2)${NC}"
echo -e "  Shell   : ${CIANO}$SHELL${NC}"
echo -e "  Git     : ${CIANO}$(git --version 2>&1)${NC}"
echo ""
