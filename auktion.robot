# FILE: auktion.robot

#  ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
#  ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
#  ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
#  ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
#  ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
#  ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
*** Settings ***

Documentation     Frequenzauktion 5G 2019 Datacollector with ${BROWSER}
Library           SeleniumLibrary
Library           OperatingSystem
Library           String
Library           Collections
Library           XvfbRobot
Resource          auktion_keyword.resource


#  ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
#  ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
#  ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
#  ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
#   ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
#    ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝
*** Variables ***

${URLDATA}      https://www.bundesnetzagentur.de/_tools/FrequenzXml/Auktion2019_XML/
${URLMAIN}      https://www.bundesnetzagentur.de/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/OeffentlicheNetze/Mobilfunknetze/mobilfunknetze-node.html
${BROWSER}      Chrome              # possible values: Chrome, Firefox, ...
${WINDOW_X}     1440
${WINDOW_Y}     1080


#  ████████╗███████╗███████╗████████╗     ██████╗ █████╗ ███████╗███████╗███████╗
#  ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝    ██╔════╝██╔══██╗██╔════╝██╔════╝██╔════╝
#     ██║   █████╗  ███████╗   ██║       ██║     ███████║███████╗█████╗  ███████╗
#     ██║   ██╔══╝  ╚════██║   ██║       ██║     ██╔══██║╚════██║██╔══╝  ╚════██║
#     ██║   ███████╗███████║   ██║       ╚██████╗██║  ██║███████║███████╗███████║
#     ╚═╝   ╚══════╝╚══════╝   ╚═╝        ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
*** Test Cases ***

Get All Data
    [Tags]              All
    [Documentation]     Go to the Webpage "https://www.bundesnetzagentur.de" and collect all informations

    Setup Xvfb
    Open Browser
    Check existence of vars.txt
    Navigate To Main Webpage
    Get amount of Rounds
    Gather Data
    Close Browser