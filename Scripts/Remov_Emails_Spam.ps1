#pega lista de e-mails definida

$afetados = Get-Content -Path C:\Users\usuario\Desktop\listadeemails.txt

#faz laço de repetição e separa os dados com o "@"

foreach($i in $afetados){

    #limpa a informação para melhor uso

    $i = $i -split ('@')
    $i = $i[0]
    $i

    #deleta a informação da caixa definida em $i

    Search-Mailbox -Identity "$i" -SearchQuery 'Subject:"1qaz!qaz"' -DeleteContent -force

    #em caso de teste antes de apagar use o sleep
    #Start-Sleep -Seconds 
}
