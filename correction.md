Bon travail, tu maîtrises bien le concept des modules

Pour la lambda tu ne peux pas passé le message de notification dans les vars d'env sinon il sera toujours le même, tu dois le passer dans les variables de l'appel à la fonction lambda (il existe une ressource aws_lambda_invocation pour cela)

Pour créer plusieurs fois un module tu peux utiliser les boucles et mettre un "for_each" ou un "count", ça permet d'itérer et de créer plusieurs les ressources ou le module.

La structure de ton code est bonne, pense à nettoyer les fichiers vide ou à formatter correctement avec terraform fmt pour des identations identiques partout

note : 13 / 20