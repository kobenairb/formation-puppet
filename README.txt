https://github.com/puppetlabs/puppetlabs-training-bootstrap/tree/master/modules/userprefs

http://www.planningpoker.com/

https://github.com/bbatsov/rubocop

http://bombasticmonkey.com/

https://fedorahosted.org/func/


voir les rapports texte créer sur foreman, désactiver les agents pour
n'envoyer que les infos à foreman
[agent]
    report = true
apres un puppet cert clean faire un puppet node deactivate


foreman utilise external_node.sh


config_version = /un_script.sh

un_script.sh:
git log | sed -n 1p | cut -d " " -f2
