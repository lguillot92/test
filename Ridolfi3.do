cd "C:\Users\leong\Desktop\MEMOIRE\Donnees"
use Ridolfi.dta, clear
tab City
replace City="Bourg-en-Bresse" if City=="Ain"
replace City="Moulins" if City=="Allier"
replace City="Nice" if City=="Alpes-Maritimes"
replace City="Strasbourg" if City=="Alsace"
replace City="Anglesqueville-la-Bras-Long" if  City=="Anglesqueville-la-braslong"
replace City="Val-de-Saâne" if City=="Anglesqueville-saane"
replace City="Angoulême" if City=="Angouleme"
replace City="Charleville-Mézières" if City=="Ardennes"
replace City="Arnac-la-Poste" if City=="Arnac-Plaposte"
replace City="Carcassonne" if City=="Aude"
replace City="Rodez" if City=="Aveyron"
replace City="Bâle" if City=="Bale"
replace City="Pau" if City=="Basses Pyrénées"
replace City="Bernières" if City=="Bernieres"
replace City="Boulogne-sur-Mer" if City=="Boulogne-s-M."
replace City="Brétigny-sur-Orge" if City=="Bretigny-sur-Orge"
replace City="Brive-la-Gaillarde" if City=="Brive"
replace City="Carville-Pot-de-Fer" if City=="Carville sur Hericourt"
replace City="Angoulême" if City=="Charente"
replace City="La Rochelle" if City=="Charente-Inférieure"
replace City="Compiègne" if City=="Compiégne"
replace City="Carpentras" if City=="Comtat Venassin"
replace City="Clères" if City=="Cordelleville"
replace City="Tulle" if City=="Correze"
replace City="Dijon" if City=="Cote d'Or"
replace City="Guéret" if City=="Creuse"
replace City="Grenoble" if City=="Dauphine"
replace City="Niort" if City=="Deux-Sèvres"
replace City="Périgueux" if City=="Dordogne"
replace City="Besançon" if City=="Doubs"
replace City="Valence" if City=="Drome"
replace City="Évreux" if City=="Eure"
replace City="Fontaine-le-Bourg" if City=="Fontaine le bourg"
replace City="Plévenon" if City=="Fort la Latte"
drop if City=="France"
replace City="Auch" if City=="Gers"
replace City="Gontaud-de-Nogaret" if City=="Gontaudi"
replace City="La Hague" if City=="Hague"
replace City="Toulouse" if City=="Haute Garonne"
replace City="Le Puy-en-Velay" if City=="Haute-Loire"
replace City="Limoges" if City=="Haute-Vienne"
replace City="Gap" if City=="Hautes-Alpes"
replace City="Tarbes" if (City=="Hautes-Pyrenees"|City=="Hautes-Pyrénées")
replace City="Montpellier" if City=="Hèrault"
replace City="Rennes" if City=="Ille-et-Vilaine"
replace City="Grenoble" if City=="Isère"
replace City="Mont-de-Marsan" if City=="Landes"
drop if (City=="Languedoc"|City=="Languedoc-Roussillon")
replace City="Le Thor" if City=="LeThor"
replace City="Blois" if City=="Loir-et-Cher"
replace City="Nancy" if City=="Lorraine"
replace City="Lille" if City=="Lille, Marquette, Warbrechies, Deulemont, Armentieres"
replace City="Cahors" if City=="Lot"
replace City="Agen" if City=="Lot-et-Garonne"
replace City="Mende" if City=="Lozère"
replace City="Guéret" if City=="Marche"
replace City="Châlons-en-Champagne" if City=="Marne"
replace City="Martainville-Épreville" if City=="Martainville sur Ry"
replace City="Bar-le-Duc" if City=="Meuse"
replace City="Monchy-Saint-Éloi" if City=="Monchy"
replace City="Néville" if City=="Neville"
replace City="Nîmes" if City=="Nimes"
replace City="Nevers" if City=="Nièvre"
replace City="Condé-sur-l'Escaut" if City=="Nord-Libre"
replace City="Lille" if City=="Nord - Pas-de-Calais"
drop if (City=="Normandie"|City=="Normandy")
replace City="Auffay" if City=="Notre-dame d'Auffay"
replace City="Ourville-en-Caux" if City=="Ourville"
drop if City=="Pays de la Loire"
replace City="Petit-Caux" if City=="Penly"
replace City="Amiens" if City=="Picardie"
replace City="Pommeréval" if City=="Pommereval"
replace City="Préaux" if City=="Preauix"
replace City="Pau" if City=="Pyrenees-Atlantques"
replace City="Perpignan" if City=="Pyrénées-Orientales"
replace City="Lyon" if City=="Rhine-et-Loire"
replace City="Rodez" if City=="Rouergue"
replace City="Ernemont-la-Villette" if City=="Saint Martin d'Ernemont"
replace City="Bardouville" if City=="Saint Michel de Bardouville"
replace City="Aix-en-Provence" if City=="Saint Sauveur (Aix)"
replace City="Saint-Antonin-Noble-Val" if City=="Saint-Antonin"
replace City="Saint-Jean-de-Luz" if City=="Saint-Jean-De-Luz"
replace City="Mâcon" if City=="Saone-et-Loire"
replace City="Amiens" if City=="Somme"
replace City="Montauban" if City=="Tarn-et-Garonne"
replace City="La Roche-sur-Yon" if City=="Vendé"
replace City="Auxerre" if City=="Yonne"
drop if City=="Vienne"
drop if City=="Gascogne"
drop if City=="Bâle"
replace City="Beaulieu" if City=="Beaulieau"
replace City="La Gorgue" if City=="Lagorgue"
replace City="Mehun-sur-Yèvre" if City=="Mehun-sur-Yévre"
replace City="Chambéry" if City=="Mont-Blanc"
replace City="Cauville" if City=="Raimbertot"
replace City="Albi" if City=="Tarn"

drop _merge
merge m:m City using commune2021
keep if _merge==3
drop _merge
destring com, replace
merge m:m com using bilateral
keep if _merge==3
drop _merge
sort City trsptot
by City : keep if 
